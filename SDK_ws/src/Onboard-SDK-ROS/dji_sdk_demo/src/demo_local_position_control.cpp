/** @file demo_flight_control.cpp
 *  @version 3.3
 *  @date September, 2017
 *
 *  @brief
 *  demo sample of how to use Local position control
 *
 *  @copyright 2017 DJI. All rights reserved.
 *
 */

#include "dji_sdk_demo/demo_local_position_control.h"
#include "dji_sdk/dji_sdk.h"
#include <nav_msgs/Odometry.h>
#include <Eigen/Dense>
#include <iostream>
#include <fstream>
#include <sstream>
using namespace std;

ros::ServiceClient set_local_pos_reference;
ros::ServiceClient sdk_ctrl_authority_service;
ros::ServiceClient drone_task_service;

ros::ServiceClient drone_arm_service;

ros::ServiceClient query_version_service;

ros::Publisher ctrlThrYawPub;

// global variables for subscribed topics
uint8_t flight_status = 255;
uint8_t display_mode = 255;
uint8_t current_gps_health = 0;
int num_targets = 0;
geometry_msgs::PointStamped local_position;
sensor_msgs::NavSatFix current_gps_position;
// geometry_msgs::Quaternion current_atti;
//geometry_msgs::Vector3Stamped current_vel;

struct current_position_def
{
  double x;
  double y;
  double z;
  double orb_x;
  double orb_y;  
  double orb_z;
  double x_fu;
  double y_fu;
};

current_position_def current_position, current_vel,tag_position;

geometry_msgs::Quaternion current_atti;//mocap 提供的姿态



double yawAngle;
double yawAngle_imu;
double fcmd;
double x, y;

//double m = 0.0381;
double m = 0.045;
double g = 9.8;
double r = 1;
const double Pi = 3.1415926;
double w = 2 * Pi / 1500; //3000次跑一圈即i加到3000时跑完360度
double s = 1;  //orb的深度比例

int flag = 1;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "demo_local_position_control_node");
  ros::NodeHandle nh;

    //以下是保存位姿和速度等信息到txt文件中
  string desire_pose = "desire_pose.txt";//期望位姿
  ofstream f_d_p;
  f_d_p.open(desire_pose.c_str()); // delete previos data from last run.
  f_d_p.close();

  string cur_pose = "cur_pose.txt";//当前位姿
  ofstream f_c_p;
  f_c_p.open(cur_pose.c_str()); // delete previos data from last run.
  f_c_p.close();
  // ros::Subscriber sub = nh.subscribe("/pose_by_orb", 10, save_cur_pose_callback);//里面包括位置和yaw角

  string tag_pose = "tag_pose.txt";//当前位姿
  ofstream f_t_p;
  f_t_p.open(tag_pose.c_str()); // delete previos data from last run.
  f_t_p.close();

  string cur_vel = "cur_vel.txt";//当前速度
  ofstream f_c_v;
  f_c_v.open(cur_vel.c_str()); // delete previos data from last run.
  f_c_v.close();
  // ros::Subscriber sub = nh.subscribe("/dji_sdk/velocity", 10, save_cur_vel_callback);
  
  string cur_yaw = "cur_yaw.txt";//当前yaw
  ofstream f_c_yaw;
  f_c_yaw.open(cur_yaw.c_str()); // delete previos data from last run.
  f_c_yaw.close();


  string cur_control = "cur_control.txt";//当前控制量输出
  ofstream f_c_control;
  f_c_control.open(cur_control.c_str()); // delete previos data from last run.
  f_c_control.close();

  // Subscribe to messages from dji_sdk_node
  ros::Subscriber flightStatusSub = nh.subscribe("dji_sdk/flight_status", 10, &flight_status_callback);
  ros::Subscriber displayModeSub = nh.subscribe("dji_sdk/display_mode", 10, &display_mode_callback);
  ros::Subscriber localPosition = nh.subscribe("dji_sdk/local_position", 10, &local_position_callback);
  ros::Subscriber gpsSub = nh.subscribe("dji_sdk/gps_position", 10, &gps_position_callback);
  ros::Subscriber gpsHealth = nh.subscribe("dji_sdk/gps_health", 10, &gps_health_callback);

  ros::Subscriber attitudeSub = nh.subscribe("dji_sdk/attitude", 10, &attitude_callback);
  ros::Subscriber velocity = nh.subscribe("/dji_sdk/velocity", 10, &velocity_callback);

  ros::Subscriber mocapsub = nh.subscribe("/qualisys/M100/odom", 10, &mocap_callback); //mocap提供的位姿及速度信息
  ros::Subscriber pose_by_orb_sub = nh.subscribe("/pose_by_orb", 10, &pose_by_orb_callback);

  ros::Subscriber tag_Sub = nh.subscribe("/tag_Odometry", 10, &tag_callback);//订阅tag的话题






  // Publish the control signal
  ctrlThrYawPub = nh.advertise<sensor_msgs::Joy>("dji_sdk/flight_control_setpoint_generic", 10);
  // Basic services
  sdk_ctrl_authority_service = nh.serviceClient<dji_sdk::SDKControlAuthority>("dji_sdk/sdk_control_authority");
  drone_task_service = nh.serviceClient<dji_sdk::DroneTaskControl>("dji_sdk/drone_task_control");

  drone_arm_service = nh.serviceClient<dji_sdk::DroneArmControl>("dji_sdk/drone_arm_control");

  query_version_service = nh.serviceClient<dji_sdk::QueryDroneVersion>("dji_sdk/query_drone_version");
  set_local_pos_reference = nh.serviceClient<dji_sdk::SetLocalPosRef>("dji_sdk/set_local_pos_ref");

  bool obtain_control_result = obtain_control();
  bool takeoff_result;
  if (!set_local_position())
  {
    ROS_WARN("GPS health insufficient - No local frame reference for height. Exiting.");
   // return 1;
  }

  /*
    if (is_M100())
    {
      ROS_INFO("M100 taking off!");
      takeoff_result = M100monitoredTakeoff();
    }
    else
    {
      ROS_INFO("A3/N3 taking off!");
      takeoff_result = monitoredTakeoff();
    }

    if (takeoff_result)
    {
      //! Enter total number of Targets
      num_targets = 2;
      //! Start Mission by setting Target state to 1
      target_set_state = 1;
    }
  */

  int j = 0;
  if (my_takeoff(1)) //启动电机
  {
    ros::Rate loop_rate(50);
    while (ros::ok())
    {
      if (j < 200)
      {
        local_position_ctrl4(); //起飞到(0,0,0.8)
        cout << "  tag_x = " << tag_position.x;
        cout << "  tag_y = " << tag_position.y;
        cout << "  tag_z = " << tag_position.z << endl;
        target_set_state = 0;
        j++;
        cout << "now j<200 AND j = " << j << endl;
      }
      else if (j >= 200 && j<300)
      {
        cout << "now I am in 200-300  AND j = " << j << endl;
        if (flag == 1)
        {
          s = (tag_position.z) / (current_position.orb_z);
          cout << "计算出来的深度s为" << s << endl;
          j++;
          cout << "now in calculate s AND  j = " << j << endl;

        }
        local_position_ctrl4();


      }

      else 
      {
        target_set_state = 1 ;//无人机正常执行下面的轨迹函数
        j++;
        cout << "now  state = 1   AND j = "<< j << endl;
        break;
      }

      loop_rate.sleep();
      ros::spinOnce();
    }
  }

  double xcmd, ycmd, zcmd;
  sensor_msgs::Joy controlPosYaw;
  ////
  ///
  //
  /*
  static ros::Time start_time = ros::Time::now();
  ros::Duration elapsed_time = ros::Time::now() - start_time;
  if (elapsed_time > ros::Duration(0.02))
  {
    start_time = ros::Time::now();
  */
  int i = 0;
  int k = 0;
  ros::Rate loop_rate(50);
  while (ros::ok())
  {
    /* code */
    if (target_set_state == 1) //画轨迹的任务
    {
      //! First arbitrary target

      // setTarget(10, 15, 25, 2);
      // local_position_ctrl(xcmd, ycmd, zcmd);
      const double Pi = 3.1415926;
      double t = ros::Time::now().toSec();
      if (i < 1500) //飞一圈是1500
      {
        x = (r * cos(Pi / 2 + w * i)) / (sin(Pi / 2 + w * i) * sin(Pi / 2 + w * i) + 1);
        cout << " now in  yuan  x = " << x << endl;
        y = (r * cos(Pi / 2 + w * i) * sin(Pi / 2 + w * i)) / (sin(Pi / 2 + w * i) * sin(Pi / 2 + w * i) + 1); //轨迹方程
        cout << " now in yuan  y = " << y << endl;

        ros::Time currentTime1 = ros::Time::now();
        f_d_p.open(desire_pose.c_str(),ios::app);
        f_d_p << fixed;
        f_d_p << currentTime1 << setprecision(9) <<" "<< x << " " << y << " " << endl;
        f_d_p.close();



        i++;
        cout << " i = " << i << endl;
        local_position_ctrl3();
      }
      else if (i > 1500 && i < 1800) //悬停６秒
      {
        x = (r * cos(Pi / 2 + w * 1501)) / (sin(Pi / 2 + w * 1501) * sin(Pi / 2 + w * 1501) + 1);
        cout << " x = " << x << endl;
        y = (r * cos(Pi / 2 + w * 1501) * sin(Pi / 2 + w * 1501)) / (sin(Pi / 2 + w * 1501) * sin(Pi / 2 + w * 1501) + 1); //停下
        cout << " y = " << y << endl;
        i++;

        ros::Time currentTime2 = ros::Time::now();
        f_d_p.open(desire_pose.c_str(),ios::app);
        f_d_p << fixed;
        f_d_p << currentTime2 << setprecision(9) <<" "<< x << " " << y << " " << endl;
        f_d_p.close();

        cout << " i = " << i << endl;
        local_position_ctrl3();
      }
      else
      {
        x = 0;
        cout << " x = " << current_position.x << endl;
        y = 0;
        cout << "   y = " << current_position.y << endl;
        double z = 0;
        cout << "   z = " << current_position.z << endl;
        i++;

        cout << " i = " << i << endl;
        local_position_ctrl2(); //降落到（0，0, 0）
      }
    }

    //以下是定点飞行任务,先飞到001，再到101，再到001，再到000
    else if (target_set_state == 2)
    {
      if (k < 400) //保持住（0,0,1）
      {

        ros::Time currentTime3 = ros::Time::now();
        /*f_d_p.open(desire_pose.c_str(),ios::app);
        f_d_p << fixed;
        f_d_p << currentTime3 << setprecision(9) <<" "<< x << " " << y << " "  <<endl;
        f_d_p.close();*/


        cout << "x = " << tag_position.x;
        cout << "  y = " << tag_position.y;
        cout << "  z = " << tag_position.z << endl;
        local_position_ctrl4(); // z =1;
        k++;//注释掉这部分，即Ｋ值不增加，一直维持悬停状态
      }
      /*
                                                          else if (k > 200 && k < 400)//飞到（1,0,1）
                                                          {
                                                            x = 1;
                                                            y = 0;
                                                            local_position_ctrl3();// z =1;
                                                            cout << "x = "<<local_position.point.x;
                                                            cout << "  y = "<<local_position.point.y;
                                                            cout << "  z = "<<local_position.point.z<< endl;
                                                            k++;

                                                          }
                                                          else if(k > 400 && k < 600)//飞到（0，0, 1 ）
                                                          {
                                                             x = 0;
                                                             y = 0; 
                                                             cout << "x = "<<local_position.point.x;
                                                             cout << "  y = "<<local_position.point.y;
                                                             cout << "  z = "<<local_position.point.z<< endl;
                                                             local_position_ctrl3();// z =1;
                                                             k++;

                                                          }
                                                          */
      else 
      {
        cout << "x = " << tag_position.x;
        cout << "  y = " << tag_position.y;
        cout << "  z = " << tag_position.z << endl;
        local_position_ctrl5(); 
        k++;
      }
    }

    loop_rate.sleep();
    ros::spinOnce();
  }

  //}

  // ros::spin();
  return 0;
}

/*!
 * This function is called when local position data is available.
 * In the example below, we make use of two arbitrary targets as
 * an example for local position control.
 *
 */

void local_position_ctrl1() //起飞到（０，０，１）
{
  cout << "now used local_position_ctrl1" << endl;
  Eigen::Vector3d p_d(0, 0, 0.5);
  Eigen::Vector3d p_I(current_position.x, current_position.y, current_position.z);
  Eigen::Vector3d e_p = p_I - p_d;
  Eigen::Vector3d v_d(0, 0, 0);
  Eigen::Vector3d v_I(current_vel.x, current_vel.y, current_vel.z);//in mocap
  // Eigen::Vector3d v_I(current_vel.vector.x, current_vel.vector.y, current_vel.vector.z);
  Eigen::Vector3d e_v = v_I - v_d;
  Eigen::Vector3d e3(0, 0, 1);
  Eigen::Vector3d p_d_dao(0, 0, 0);
  Eigen::Matrix3d k_p;
  k_p << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.1;
  Eigen::Matrix3d k_v;
  k_v << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.12;
  Eigen::Vector3d F = -(k_p * e_p) - (k_v * e_v) + (m * g * e3) - (m * p_d_dao);
  double f = F.norm(); //模长
  cout << "f = " << f << endl;
  Eigen::Vector3d r_3d = F / f;
  Eigen::Vector3d n_2d(0, 1, 0);
  Eigen::Vector3d r_1d_1 = n_2d.cross(r_3d); //cross()来实现叉乘
  Eigen::Vector3d r_1d = r_1d_1 / r_1d_1.norm();
  Eigen::Vector3d r_2d = r_3d.cross(r_1d);
  Eigen::Matrix3d R_d;
  R_d.col(0) = r_1d;
  R_d.col(1) = r_2d;
  R_d.col(2) = r_3d;
  Eigen::Vector3d eulerAngle = R_d.eulerAngles(2, 1, 0); //旋转矩阵转欧拉角
  // Eigen::AngleAxisd rollAngle(Eigen::AngleAxisd(eulerAngle(2), Eigen::Vector3d::UnitX()));
  // Eigen::AngleAxisd pitchAngle(Eigen::AngleAxisd(eulerAngle(1), Eigen::Vector3d::UnitY()));

  double yaw_cmd;        //yaw的角速率
  double yaw = yawAngle; //当前的yaw

  // cout << "回调函数计算的偏航角为: " << yaw << endl;

  yaw_cmd = 2.8 * (0 - yaw); //期望的yaw为0,
  
  // cout << "偏航角的控制量为：" << yaw_cmd << endl;

  double fcmd = f * 100;
  double rcmd = eulerAngle(2);
  double pcmd = eulerAngle(1);

        ros::Time currentTime4 = ros::Time::now();
  string cur_control = "cur_control.txt";//当前控制量输出
  ofstream f_c_control;
  f_c_control.open(cur_control.c_str(),ios::app);
  f_c_control << fixed;
  f_c_control << currentTime4 << setprecision(9) <<" "<< fcmd  << " " << rcmd << " " << pcmd <<endl;
  f_c_control.close();




  sensor_msgs::Joy controlThrustYawRate;
  uint8_t flag = (DJISDK::VERTICAL_THRUST |
                  DJISDK::HORIZONTAL_ANGLE |
                  DJISDK::YAW_RATE |
                  DJISDK::HORIZONTAL_BODY |
                  DJISDK::STABLE_ENABLE);
  controlThrustYawRate.axes.push_back(rcmd);
  controlThrustYawRate.axes.push_back(pcmd);
  controlThrustYawRate.axes.push_back(fcmd);
  controlThrustYawRate.axes.push_back(yaw_cmd);
  controlThrustYawRate.axes.push_back(flag);
  /*
  float roll      = pMsg->axes[0];
  float pitch     = pMsg->axes[1];
  float pz        = pMsg->axes[2];
  float yawRate   = pMsg->axes[3];
*/
  ctrlThrYawPub.publish(controlThrustYawRate);
  /*
  double e_x, e_y;
  e_x = 0 - local_position.point.x;
  e_y = 5 - local_position.point.y;

  double xcmd = 0.1 * e_x;
  double ycmd = 0.2 * e_y;
  double zcmd = 10;
  sensor_msgs::Joy controlVelYawRate;
  uint8_t flag = (DJISDK::VERTICAL_POSITION |
                  DJISDK::HORIZONTAL_VELOCITY |
                  DJISDK::YAW_ANGLE |
                  DJISDK::HORIZONTAL_GROUND |
                  DJISDK::STABLE_ENABLE);
  controlVelYawRate.axes.push_back(xcmd);
  controlVelYawRate.axes.push_back(ycmd);
  controlVelYawRate.axes.push_back(zcmd);
  controlVelYawRate.axes.push_back(90);
  controlVelYawRate.axes.push_back(flag);

  ctrlPosYawPub.publish(controlVelYawRate);
*/
}

void local_position_ctrl2() //飞到轨迹起始点（0，0，0）
{
  cout << "now used local_position_ctrl2" << endl;
  Eigen::Vector3d p_d(0, 0, 0);
  Eigen::Vector3d p_I(current_position.x, current_position.y, current_position.z);
  Eigen::Vector3d e_p = p_I - p_d;
  Eigen::Vector3d v_d(0, 0, 0);
  Eigen::Vector3d v_I(current_vel.x, current_vel.y, current_vel.z);//in mocap
  // Eigen::Vector3d v_I(current_vel.vector.x, current_vel.vector.y, current_vel.vector.z);
  Eigen::Vector3d e_v = v_I - v_d;
  Eigen::Vector3d e3(0, 0, 1);
  Eigen::Vector3d p_d_dao(0, 0, 0);
  Eigen::Matrix3d k_p;
  k_p << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.1;
  Eigen::Matrix3d k_v;
  k_v << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.12;
  Eigen::Vector3d F = -(k_p * e_p) - (k_v * e_v) + (m * g * e3) - (m * p_d_dao);
  double f = F.norm(); //模长
  cout << "f = " << f << endl;
  Eigen::Vector3d r_3d = F / f;
  Eigen::Vector3d n_2d(0, 1, 0);
  Eigen::Vector3d r_1d_1 = n_2d.cross(r_3d); //cross()来实现叉乘
  Eigen::Vector3d r_1d = r_1d_1 / r_1d_1.norm();
  Eigen::Vector3d r_2d = r_3d.cross(r_1d);
  Eigen::Matrix3d R_d;
  R_d.col(0) = r_1d;
  R_d.col(1) = r_2d;
  R_d.col(2) = r_3d;
  Eigen::Vector3d eulerAngle = R_d.eulerAngles(2, 1, 0); //旋转矩阵转欧拉角
  // Eigen::AngleAxisd rollAngle(Eigen::AngleAxisd(eulerAngle(2), Eigen::Vector3d::UnitX()));
  // Eigen::AngleAxisd pitchAngle(Eigen::AngleAxisd(eulerAngle(1), Eigen::Vector3d::UnitY()));

  double yaw_cmd;        //yaw的角速率
  double yaw = yawAngle; //当前的yaw
  // cout << "回调函数计算的偏航角为: " << yaw << endl;

  yaw_cmd = 2.8 * (0 - yaw); //期望的yaw为0,

  // cout << "偏航角的控制量为：" << yaw_cmd << endl;
  double fcmd = f * 100;
  double rcmd = eulerAngle(2);
  double pcmd = eulerAngle(1);

        ros::Time currentTime5 = ros::Time::now();
  string cur_control = "cur_control.txt";//当前控制量输出
  ofstream f_c_control;
  f_c_control.open(cur_control.c_str(),ios::app);
  f_c_control << fixed;
  f_c_control << currentTime5 << setprecision(9) <<" "<< fcmd  << " " << rcmd << " " << pcmd <<endl;
  f_c_control.close();

  sensor_msgs::Joy controlThrustYawRate;
  uint8_t flag = (DJISDK::VERTICAL_THRUST |
                  DJISDK::HORIZONTAL_ANGLE |
                  DJISDK::YAW_RATE |
                  DJISDK::HORIZONTAL_BODY |
                  DJISDK::STABLE_ENABLE);
  controlThrustYawRate.axes.push_back(rcmd);
  controlThrustYawRate.axes.push_back(pcmd);
  controlThrustYawRate.axes.push_back(fcmd);
  controlThrustYawRate.axes.push_back(yaw_cmd);
  controlThrustYawRate.axes.push_back(flag);
  /*
  float roll      = pMsg->axes[0];
  float pitch     = pMsg->axes[1];
  float pz        = pMsg->axes[2];
  float yawRate   = pMsg->axes[3];
*/
  ctrlThrYawPub.publish(controlThrustYawRate);
  /*
  double e_x, e_y;
  e_x = 0 - local_position.point.x;
  e_y = 5 - local_position.point.y;

  double xcmd = 0.1 * e_x;
  double ycmd = 0.2 * e_y;
  double zcmd = 10;
  sensor_msgs::Joy controlVelYawRate;
  uint8_t flag = (DJISDK::VERTICAL_POSITION |
                  DJISDK::HORIZONTAL_VELOCITY |
                  DJISDK::YAW_ANGLE |
                  DJISDK::HORIZONTAL_GROUND |
                  DJISDK::STABLE_ENABLE);
  controlVelYawRate.axes.push_back(xcmd);
  controlVelYawRate.axes.push_back(ycmd);
  controlVelYawRate.axes.push_back(zcmd);
  controlVelYawRate.axes.push_back(90);
  controlVelYawRate.axes.push_back(flag);

  ctrlPosYawPub.publish(controlVelYawRate);
*/
}

void local_position_ctrl3()
{
  cout << "now used local_position_ctrl3" << endl;
  Eigen::Vector3d p_d(x, y, 0.5);
  Eigen::Vector3d p_I(current_position.x, current_position.y, current_position.z);
  Eigen::Vector3d e_p = p_I - p_d;
  Eigen::Vector3d v_d(0, 0, 0);
  Eigen::Vector3d v_I(current_vel.x, current_vel.y, current_vel.z);//in mocap
  // Eigen::Vector3d v_I(current_vel.vector.x, current_vel.vector.y, current_vel.vector.z);
  Eigen::Vector3d e_v = v_I - v_d;
  Eigen::Vector3d e3(0, 0, 1);
  Eigen::Vector3d p_d_dao(0, 0, 0);
  Eigen::Matrix3d k_p;
  k_p << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.1;
  Eigen::Matrix3d k_v;
  k_v << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.12;
  Eigen::Vector3d F = -(k_p * e_p) - (k_v * e_v) + (m * g * e3) - (m * p_d_dao);
  double f = F.norm(); //模长
  cout << "f = " << f << endl;
  Eigen::Vector3d r_3d = F / f;
  Eigen::Vector3d n_2d(0, 1, 0);
  Eigen::Vector3d r_1d_1 = n_2d.cross(r_3d); //cross()来实现叉乘
  Eigen::Vector3d r_1d = r_1d_1 / r_1d_1.norm();
  Eigen::Vector3d r_2d = r_3d.cross(r_1d);
  Eigen::Matrix3d R_d;
  R_d.col(0) = r_1d;
  R_d.col(1) = r_2d;
  R_d.col(2) = r_3d;
  Eigen::Vector3d eulerAngle = R_d.eulerAngles(2, 1, 0); //旋转矩阵转欧拉角
  // Eigen::AngleAxisd rollAngle(Eigen::AngleAxisd(eulerAngle(2), Eigen::Vector3d::UnitX()));
  // Eigen::AngleAxisd pitchAngle(Eigen::AngleAxisd(eulerAngle(1), Eigen::Vector3d::UnitY()));

  double yaw_cmd;        //yaw的角速率
  double yaw = yawAngle; //当前的yaw
  // cout << "回调函数计算的偏航角为: " << yaw << endl;

  yaw_cmd = 2.8 * (0 - yaw); //期望的yaw为0,

  // cout << "偏航角的控制量为：" << yaw_cmd << endl;
  double fcmd = f * 100;
  double rcmd = eulerAngle(2);
  double pcmd = eulerAngle(1);

        ros::Time currentTime6 = ros::Time::now();
  string cur_control = "cur_control.txt";//当前控制量输出
  ofstream f_c_control;
  f_c_control.open(cur_control.c_str(),ios::app);
  f_c_control << fixed;
  f_c_control << currentTime6 << setprecision(9) <<" "<< fcmd  << " " << rcmd << " " << pcmd <<endl;
  f_c_control.close();

  sensor_msgs::Joy controlThrustYawRate;
  uint8_t flag = (DJISDK::VERTICAL_THRUST |
                  DJISDK::HORIZONTAL_ANGLE |
                  DJISDK::YAW_RATE |
                  DJISDK::HORIZONTAL_BODY |
                  DJISDK::STABLE_ENABLE);
  controlThrustYawRate.axes.push_back(rcmd);
  controlThrustYawRate.axes.push_back(pcmd);
  controlThrustYawRate.axes.push_back(fcmd);
  controlThrustYawRate.axes.push_back(yaw_cmd);
  controlThrustYawRate.axes.push_back(flag);

  ctrlThrYawPub.publish(controlThrustYawRate);

}


void local_position_ctrl4()
{
  cout << "now used local_position_ctrl4" << endl;
  Eigen::Vector3d p_d(-1.81, 0, 0.5);
  Eigen::Vector3d p_I(tag_position.x, tag_position.y, tag_position.z);
  Eigen::Vector3d e_p = p_I - p_d;
  Eigen::Vector3d v_d(0, 0, 0);
  Eigen::Vector3d v_I(current_vel.x, current_vel.y, current_vel.z);//in mocap
  // Eigen::Vector3d v_I(current_vel.vector.x, current_vel.vector.y, current_vel.vector.z);
  Eigen::Vector3d e_v = v_I - v_d;
  Eigen::Vector3d e3(0, 0, 1);
  Eigen::Vector3d p_d_dao(0, 0, 0);
  Eigen::Matrix3d k_p;
  k_p << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.1;
  Eigen::Matrix3d k_v;
  k_v << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.12;
  Eigen::Vector3d F = -(k_p * e_p) - (k_v * e_v) + (m * g * e3) - (m * p_d_dao);
  double f = F.norm(); //模长
  cout << "f = " << f << endl;
  Eigen::Vector3d r_3d = F / f;
  Eigen::Vector3d n_2d(0, 1, 0);
  Eigen::Vector3d r_1d_1 = n_2d.cross(r_3d); //cross()来实现叉乘
  Eigen::Vector3d r_1d = r_1d_1 / r_1d_1.norm();
  Eigen::Vector3d r_2d = r_3d.cross(r_1d);
  Eigen::Matrix3d R_d;
  R_d.col(0) = r_1d;
  R_d.col(1) = r_2d;
  R_d.col(2) = r_3d;
  Eigen::Vector3d eulerAngle = R_d.eulerAngles(2, 1, 0); //旋转矩阵转欧拉角
  // Eigen::AngleAxisd rollAngle(Eigen::AngleAxisd(eulerAngle(2), Eigen::Vector3d::UnitX()));
  // Eigen::AngleAxisd pitchAngle(Eigen::AngleAxisd(eulerAngle(1), Eigen::Vector3d::UnitY()));

  double yaw_cmd;        //yaw的角速率
  double yaw = yawAngle_imu; //当前的yaw
  // cout << "回调函数计算的偏航角为: " << yaw << endl;

  yaw_cmd = 2.8 * (0 - yaw); //期望的yaw为0,

  // cout << "偏航角的控制量为：" << yaw_cmd << endl;
  double fcmd = f * 100;
  double rcmd = eulerAngle(2);
  double pcmd = eulerAngle(1);

        ros::Time currentTime6 = ros::Time::now();
  string cur_control = "cur_control.txt";//当前控制量输出
  ofstream f_c_control;
  f_c_control.open(cur_control.c_str(),ios::app);
  f_c_control << fixed;
  f_c_control << currentTime6 << setprecision(9) <<" "<< fcmd  << " " << rcmd << " " << pcmd <<endl;
  f_c_control.close();

  sensor_msgs::Joy controlThrustYawRate;
  uint8_t flag = (DJISDK::VERTICAL_THRUST |
                  DJISDK::HORIZONTAL_ANGLE |
                  DJISDK::YAW_RATE |
                  DJISDK::HORIZONTAL_BODY |
                  DJISDK::STABLE_ENABLE);
  controlThrustYawRate.axes.push_back(rcmd);
  controlThrustYawRate.axes.push_back(pcmd);
  controlThrustYawRate.axes.push_back(fcmd);
  controlThrustYawRate.axes.push_back(yaw_cmd);
  controlThrustYawRate.axes.push_back(flag);

  ctrlThrYawPub.publish(controlThrustYawRate);

}




void local_position_ctrl5()
{
  cout << "now used local_position_ctrl5" << endl;
  Eigen::Vector3d p_d(-1.81, 0, 0.5);
  Eigen::Vector3d p_I(tag_position.x, tag_position.y, tag_position.z);
  Eigen::Vector3d e_p = p_I - p_d;
  Eigen::Vector3d v_d(0, 0, 0);
  Eigen::Vector3d v_I(current_vel.x, current_vel.y, current_vel.z);//in mocap
  // Eigen::Vector3d v_I(current_vel.vector.x, current_vel.vector.y, current_vel.vector.z);
  Eigen::Vector3d e_v = v_I - v_d;
  Eigen::Vector3d e3(0, 0, 1);
  Eigen::Vector3d p_d_dao(0, 0, 0);
  Eigen::Matrix3d k_p;
  k_p << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.1;
  Eigen::Matrix3d k_v;
  k_v << 0.09, 0, 0,
      0, 0.09, 0,
      0, 0, 0.12;
  Eigen::Vector3d F = -(k_p * e_p) - (k_v * e_v) + (m * g * e3) - (m * p_d_dao);
  double f = F.norm(); //模长
  cout << "f = " << f << endl;
  Eigen::Vector3d r_3d = F / f;
  Eigen::Vector3d n_2d(0, 1, 0);
  Eigen::Vector3d r_1d_1 = n_2d.cross(r_3d); //cross()来实现叉乘
  Eigen::Vector3d r_1d = r_1d_1 / r_1d_1.norm();
  Eigen::Vector3d r_2d = r_3d.cross(r_1d);
  Eigen::Matrix3d R_d;
  R_d.col(0) = r_1d;
  R_d.col(1) = r_2d;
  R_d.col(2) = r_3d;
  Eigen::Vector3d eulerAngle = R_d.eulerAngles(2, 1, 0); //旋转矩阵转欧拉角
  // Eigen::AngleAxisd rollAngle(Eigen::AngleAxisd(eulerAngle(2), Eigen::Vector3d::UnitX()));
  // Eigen::AngleAxisd pitchAngle(Eigen::AngleAxisd(eulerAngle(1), Eigen::Vector3d::UnitY()));

  double yaw_cmd;        //yaw的角速率
  double yaw = yawAngle_imu; //当前的yaw
  // cout << "回调函数计算的偏航角为: " << yaw << endl;

  yaw_cmd = 2.8 * (0 - yaw); //期望的yaw为0,

  // cout << "偏航角的控制量为：" << yaw_cmd << endl;
  double fcmd = f * 100;
  double rcmd = eulerAngle(2);
  double pcmd = eulerAngle(1);

        ros::Time currentTime6 = ros::Time::now();
  string cur_control = "cur_control.txt";//当前控制量输出
  ofstream f_c_control;
  f_c_control.open(cur_control.c_str(),ios::app);
  f_c_control << fixed;
  f_c_control << currentTime6 << setprecision(9) <<" "<< fcmd  << " " << rcmd << " " << pcmd <<endl;
  f_c_control.close();

  sensor_msgs::Joy controlThrustYawRate;
  uint8_t flag = (DJISDK::VERTICAL_THRUST |
                  DJISDK::HORIZONTAL_ANGLE |
                  DJISDK::YAW_RATE |
                  DJISDK::HORIZONTAL_BODY |
                  DJISDK::STABLE_ENABLE);
  controlThrustYawRate.axes.push_back(rcmd);
  controlThrustYawRate.axes.push_back(pcmd);
  controlThrustYawRate.axes.push_back(fcmd);
  controlThrustYawRate.axes.push_back(yaw_cmd);
  controlThrustYawRate.axes.push_back(flag);

  ctrlThrYawPub.publish(controlThrustYawRate);

}



bool my_takeoff(int arm) //自己的起飞函数
{
  dji_sdk::DroneArmControl droneArmControl;
  droneArmControl.request.arm = arm;
  drone_arm_service.call(droneArmControl);

  if (!droneArmControl.response.result)
  {
    ROS_ERROR("my takeoff fail");
    return false;
  }
}

bool takeoff_land(int task)
{
  dji_sdk::DroneTaskControl droneTaskControl;

  droneTaskControl.request.task = task;

  drone_task_service.call(droneTaskControl);

  if (!droneTaskControl.response.result)
  {
    ROS_ERROR("takeoff_land fail");
    return false;
  }

  return true;
}

bool obtain_control()
{
  dji_sdk::SDKControlAuthority authority;
  authority.request.control_enable = 1;
  sdk_ctrl_authority_service.call(authority);

  if (!authority.response.result)
  {
    ROS_ERROR("obtain control failed!");
    return false;
  }

  return true;
}

bool is_M100()
{
  dji_sdk::QueryDroneVersion query;
  query_version_service.call(query);

  if (query.response.version == DJISDK::DroneFirmwareVersion::M100_31)
  {
    return true;
  }

  return false;
}

void gps_position_callback(const sensor_msgs::NavSatFix::ConstPtr &msg)
{
  current_gps_position = *msg;
}

void gps_health_callback(const std_msgs::UInt8::ConstPtr &msg)
{
  current_gps_health = msg->data;
}

void flight_status_callback(const std_msgs::UInt8::ConstPtr &msg)
{
  flight_status = msg->data;
}

void display_mode_callback(const std_msgs::UInt8::ConstPtr &msg)
{
  display_mode = msg->data;
}

/*!
 * This function demos how to use the flight_status
 * and the more detailed display_mode (only for A3/N3)
 * to monitor the take off process with some error
 * handling. Note M100 flight status is different
 * from A3/N3 flight status.
 */
bool monitoredTakeoff()
{
  ros::Time start_time = ros::Time::now();

  if (!takeoff_land(dji_sdk::DroneTaskControl::Request::TASK_TAKEOFF))
  {
    return false;
  }

  ros::Duration(0.01).sleep();
  ros::spinOnce();

  // Step 1.1: Spin the motor
  while (flight_status != DJISDK::FlightStatus::STATUS_ON_GROUND &&
         display_mode != DJISDK::DisplayMode::MODE_ENGINE_START &&
         ros::Time::now() - start_time < ros::Duration(5))
  {
    ros::Duration(0.01).sleep();
    ros::spinOnce();
  }

  if (ros::Time::now() - start_time > ros::Duration(5))
  {
    ROS_ERROR("Takeoff failed. Motors are not spinnning.");
    return false;
  }
  else
  {
    start_time = ros::Time::now();
    ROS_INFO("Motor Spinning ...");
    ros::spinOnce();
  }

  // Step 1.2: Get in to the air
  while (flight_status != DJISDK::FlightStatus::STATUS_IN_AIR &&
         (display_mode != DJISDK::DisplayMode::MODE_ASSISTED_TAKEOFF || display_mode != DJISDK::DisplayMode::MODE_AUTO_TAKEOFF) &&
         ros::Time::now() - start_time < ros::Duration(20))
  {
    ros::Duration(0.01).sleep();
    ros::spinOnce();
  }

  if (ros::Time::now() - start_time > ros::Duration(20))
  {
    ROS_ERROR("Takeoff failed. Aircraft is still on the ground, but the motors are spinning.");
    return false;
  }
  else
  {
    start_time = ros::Time::now();
    ROS_INFO("Ascending...");
    ros::spinOnce();
  }

  // Final check: Finished takeoff
  while ((display_mode == DJISDK::DisplayMode::MODE_ASSISTED_TAKEOFF || display_mode == DJISDK::DisplayMode::MODE_AUTO_TAKEOFF) &&
         ros::Time::now() - start_time < ros::Duration(20))
  {
    ros::Duration(0.01).sleep();
    ros::spinOnce();
  }

  if (display_mode != DJISDK::DisplayMode::MODE_P_GPS || display_mode != DJISDK::DisplayMode::MODE_ATTITUDE)
  {
    ROS_INFO("Successful takeoff!");
    start_time = ros::Time::now();
  }
  else
  {
    ROS_ERROR("Takeoff finished, but the aircraft is in an unexpected mode. Please connect DJI GO.");
    return false;
  }

  return true;
}

/*!
 * This function demos how to use M100 flight_status
 * to monitor the take off process with some error
 * handling. Note M100 flight status is different
 * from A3/N3 flight status.
 */
bool M100monitoredTakeoff()
{
  ros::Time start_time = ros::Time::now();

  float home_altitude = current_gps_position.altitude;
  if (!takeoff_land(dji_sdk::DroneTaskControl::Request::TASK_TAKEOFF))
  {
    return false;
  }

  ros::Duration(0.01).sleep();
  ros::spinOnce();

  // Step 1: If M100 is not in the air after 10 seconds, fail.
  while (ros::Time::now() - start_time < ros::Duration(10))
  {
    ros::Duration(0.01).sleep();
    ros::spinOnce();
  }

  if (flight_status != DJISDK::M100FlightStatus::M100_STATUS_IN_AIR ||
      current_gps_position.altitude - home_altitude < 1.0)
  {
    ROS_ERROR("Takeoff failed.");
    return false;
  }
  else
  {
    start_time = ros::Time::now();
    ROS_INFO("Successful takeoff!");
    ros::spinOnce();
  }
  return true;
}

bool set_local_position()
{
  dji_sdk::SetLocalPosRef localPosReferenceSetter;
  set_local_pos_reference.call(localPosReferenceSetter);

  return (bool)localPosReferenceSetter.response.result;
}

//以下为模拟器状态下用的位姿和速度
void local_position_callback(const geometry_msgs::PointStamped::ConstPtr &msg)
{
  // local_position = *msg;
}

/*
void attitude_callback(const geometry_msgs::QuaternionStamped::ConstPtr &msg) //
{
  // current_atti = msg->quaternion;
  // yawAngle = toEulerAngle(current_atti).z;
}
*/


//以下为mocap实验条件下用的位姿和速度
void mocap_callback(const nav_msgs::Odometry::ConstPtr &msg) //mocap 的回调函数，提供位姿及速度信息
{
/*
  current_position.x = msg->pose.pose.position.x; //提供当前位置
  current_position.y = msg->pose.pose.position.y;
  current_position.z = msg->pose.pose.position.z;
*/
/*
  current_atti = msg->pose.pose.orientation; //提供当前姿态
  yawAngle = toEulerAngle(current_atti).z;
*/
/*
  current_vel.x =msg->twist.twist.linear.x; //提供当前速度
  current_vel.y = msg->twist.twist.linear.y;
  current_vel.z = msg->twist.twist.linear.z;
*/
}
/*
//以下为orb实验条件下用的位姿和速度
void orb_callback(const geometry_msgs::PoseStamped::ConstPtr &msg)//orb的回调函数，提供位姿信息
{

  current_position.orb_x = msg->pose.position.x;//提供当前位置
  current_position.orb_y = msg->pose.position.y;
  current_position.orb_z = msg->pose.position.z;
  current_position.x =  s * current_position.orb_z;
  current_position.y =  s * (- current_position.orb_x );
  current_position.z =  s * (- current_position.orb_y );

  current_atti = msg->pose.orientation; //提供当前姿态
  yawAngle = toEulerAngle(current_atti).z;

}

void velocity_callback(const geometry_msgs::Vector3Stamped::ConstPtr &msg) //myself
{
  current_vel.x_fu = msg->vector.x;//提供当前速度
  current_vel.y_fu = msg->vector.y;
  current_vel.x = -current_vel.x_fu;
  current_vel.y = -current_vel.y_fu;
  current_vel.z = msg->vector.z;
}
*/

void pose_by_orb_callback(const geometry_msgs::PoseStamped::ConstPtr &msg)//orb的回调函数，提供位姿信息
{

  current_position.orb_x = msg->pose.position.x;//提供当前位置
  current_position.orb_y = msg->pose.position.y;
  current_position.orb_z = msg->pose.position.z;
  current_position.x =  s * (current_position.orb_x);
  current_position.y =  s * (current_position.orb_y);
  current_position.z =  s * (current_position.orb_z);
  cout << "回调函数里的深度s为" << s << endl;

  ros::Time currentTime7 = ros::Time::now();
  string cur_pose = "cur_pose.txt";//当前位姿
  ofstream f_c_p;
  f_c_p.open(cur_pose.c_str(),ios::app);
  f_c_p << fixed;
  f_c_p << currentTime7 << setprecision(9) <<" "<< current_position.x << " " << current_position.y << " " << current_position.z << endl;
  f_c_p.close();


  current_atti = msg->pose.orientation; //提供当前姿态
  yawAngle = toEulerAngle(current_atti).z;

  ros::Time currentTime8 = ros::Time::now();
  string cur_yaw = "cur_yaw.txt";//当前位姿
  ofstream f_c_yaw;
  f_c_yaw.open(cur_yaw.c_str(),ios::app);
  f_c_yaw << fixed;
  f_c_yaw << currentTime8 << setprecision(9) <<" "<< yawAngle  << endl;
  f_c_yaw.close();

  // cout << "回调函数计算的偏航角为 " << yawAngle << endl;

  flag = 1;
  cout << "回调函数de flag = " << flag << endl;
}

void velocity_callback(const geometry_msgs::Vector3Stamped::ConstPtr &msg) //myself
{
  current_vel.x = msg->vector.x;//提供当前速度
  current_vel.y = msg->vector.y;
  current_vel.z = msg->vector.z;
  cout << "当前x方向的速度为" << current_vel.x << endl;
  cout << "当前y方向的速度为" << current_vel.y << endl;
  cout << "当前z方向的速度为" << current_vel.z << endl;

  ros::Time currentTime9 = ros::Time::now();
  string cur_vel = "cur_vel.txt";//当前位姿
  ofstream f_c_v;
  f_c_v.open(cur_vel.c_str(),ios::app);
  f_c_v << fixed;
  f_c_v << currentTime9 << setprecision(9) <<" "<< current_vel.x  << " " << current_vel.y << " " << current_vel.z <<endl;
  f_c_v.close();


}


void tag_callback(const nav_msgs::Odometry::ConstPtr &msg)
{
 // flight_status = msg->data;
  tag_position.x_fu = msg -> pose.pose.position.z;
  tag_position.x = - tag_position.x_fu;
  tag_position.y = msg -> pose.pose.position.y;
  tag_position.z = msg -> pose.pose.position.x;

  ros::Time currentTime10 = ros::Time::now(); 
  string tag_pose = "tag_pose.txt";//当前位姿
  ofstream f_t_p;
  f_t_p.open(tag_pose.c_str(),ios::app);
  f_t_p << fixed;
  f_t_p << currentTime10 << setprecision(9) <<" "<< tag_position.x  << " " << tag_position.y << " " << tag_position.z <<endl;
  f_t_p.close();

}

void attitude_callback(const geometry_msgs::QuaternionStamped::ConstPtr &msg) //
{
   current_atti = msg->quaternion;
   yawAngle_imu = toEulerAngle(current_atti).z;
}
