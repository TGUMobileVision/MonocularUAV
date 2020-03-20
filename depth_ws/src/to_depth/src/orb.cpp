/**

 */
 
#include <sstream>
#include "ros/ros.h"
#include <nav_msgs/Path.h>
#include "std_msgs/String.h"
#include "talk.h"
#include "orb.h"
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf/transform_broadcaster.h>
#include <tf/tf.h>
#include <Eigen/Dense>

#include <iostream>
using namespace Eigen;
using namespace std;




// geometry_msgs::Quaternion q_orb;
// Eigen::Quaterniond q_orb;

struct pose
{
  double position_x;
  double position_y;
  double position_z;

  double orientation_x;
  double orientation_y;
  double orientation_z;
  double orientation_w;
};
pose orb_pose, drone_pose;



int main(int argc, char **argv)
{
    ros::init(argc, argv, "my_pose");
    ros::NodeHandle nh;
    ros::Subscriber orb_Sub = nh.subscribe("/posestamped", 1, &orb_callback);//订阅orb的话题


    // 创建一个Publisher，发布名为pose_by_orb的topic，消息类型为nav_msgs::Path
    ros::Publisher pose_by_orb_pub = nh.advertise<geometry_msgs::PoseStamped>("pose_by_orb", 1,true);




    // 设置循环的频率
    ros::Rate loop_rate(10);

    double count = 0.0;
    while (ros::ok())
    {

      
        //以下是计算无人机位姿的程序

        //下面是求orb变换矩阵的程序
        Eigen::Quaterniond q_orb(orb_pose.orientation_w,orb_pose.orientation_x,orb_pose.orientation_y,orb_pose.orientation_z);//orb的姿态，四元数表示
        // Eigen::Quaterniond q_orb(1,0,0,0);
        Eigen::Matrix3d R_orb = q_orb.toRotationMatrix();//将四元数转换为旋转矩阵
        Eigen::Vector3d t_orb (orb_pose.position_x,orb_pose.position_y,orb_pose.position_z);//orb的平移向量
        Eigen::MatrixXd T_orb_p(3,4);//先创建一个3*4的矩阵，里面只包括R和t，
        T_orb_p.block(0,0,3,3) = R_orb;//前3*3是旋转矩阵
        T_orb_p.col(3) = t_orb;//将orb的t赋值给T_orb的第四列
        // cout << T_orb_p << endl;
        Eigen::MatrixXd T_orb(4,4);//orb的矩阵变换
        T_orb.block(0,0,3,4) = T_orb_p;
        Eigen::RowVector4d r(0,0,0,1);//定义一个行向量
        T_orb.row(3) = r;
        cout << "orb变换矩阵 T_orb = " << endl << T_orb  << endl;

        //下面是求相机到无人机机体的变化矩阵的过程
        //过程是：知道机体到相机的旋转矩阵和平移向量，这就知道机体到相机的T1,so相机到机体的T2等于T1的逆矩阵
        Eigen::Matrix3d R_BtoC;//机体到相机的旋转矩阵
        R_BtoC << 0,  -1,   0,
                  0,   0,  -1,
                  1,   0,   0;
        Eigen::Vector3d t_BtoC(1,0,0);//机体到相机的平移向量  ??????????????????????????????????
        Eigen::MatrixXd T_BtoC_p(3,4);//先创建一个3*4的矩阵，里面只包括R和t，
        T_BtoC_p.block(0,0,3,3) = R_BtoC;//前3*3是旋转矩阵
        T_BtoC_p.col(3) = t_BtoC;//将机体到相机的t赋值给T_BtoC的第四列
        Eigen::MatrixXd T_BtoC(4,4);//机体到相机的矩阵变换
        T_BtoC.block(0,0,3,4) = T_BtoC_p;
        T_BtoC.row(3) = r;
        // cout << "机体到相机的变换矩阵T_BtoC为"<< endl <<  T_BtoC << endl;
        Eigen::Matrix4d T_CtoB;//相机到机体的旋转矩阵
        T_CtoB = T_BtoC.inverse();
        // cout << "相机到机体的变换矩阵T_CtoB为"<< endl <<  T_CtoB << endl;
        
        //下面是求无人机位姿的过程
        Eigen::Matrix4d T_drone;
        T_drone = T_CtoB * T_orb * T_BtoC;//通过orb计算无人机的变换矩阵
        cout << "无人机的变换矩阵T_drone为" << endl << T_drone <<endl;

        Eigen::MatrixXd T_drone_p(3,4);//定义一个3*4的矩阵，里面只包括R和T
        T_drone_p = T_drone.block(0,0,3,4);
        Eigen::Matrix3d R_drone;//无人机的旋转矩阵，即姿态
        R_drone = T_drone_p.block(0,0,3,3);
        cout << " 无人机的旋转矩阵为 " << endl << R_drone << endl;
        Eigen::MatrixXd t_drone(3,1);//无人机的平移向量，即位置
        t_drone = T_drone_p.col(3);
        drone_pose.position_x = t_drone(0,0);
        drone_pose.position_y = t_drone(1,0);
        drone_pose.position_z = t_drone(2,0);
        cout << "无人机的平移向量为 " << endl << t_drone << endl;
        cout << "无人机位姿 x = " << drone_pose.position_x << endl;
        cout << "无人机位姿 y = " << drone_pose.position_y << endl;
        cout << "无人机位姿 z = " << drone_pose.position_z << endl;
        // cout << currentTime << endl;
        Quaterniond q_drone(R_drone);//将旋转矩阵转为四元数
        cout << "四元数为" << endl << q_drone.coeffs() << endl;
        cout << " w = "<<q_drone.w()<< " x = " <<q_drone.x()<< " y = " <<q_drone.y()<< " z = " <<q_drone.z()<<endl;

        //以下是发布无人机的位姿 

        geometry_msgs::PoseStamped msg;
        ros::Time currentTime = ros::Time::now();
        msg.header.stamp = currentTime;
        msg.pose.position.x = drone_pose.position_x;
        msg.pose.position.y = drone_pose.position_y;
        msg.pose.position.z = drone_pose.position_z;

        msg.pose.orientation.x = q_drone.x();
        msg.pose.orientation.y = q_drone.y();
        msg.pose.orientation.z = q_drone.z();
        msg.pose.orientation.w = q_drone.w();

      
        msg.header.frame_id = "odom";


        pose_by_orb_pub.publish(msg);
       

      // 循环等待回调函数
        ros::spinOnce();
      
      // 按照循环频率延时
        loop_rate.sleep();

        ++count;

    }

    return 0;
}


void orb_callback(const geometry_msgs::PoseStamped::ConstPtr &msg)
{
 // flight_status = msg->data;
  orb_pose.position_x = msg -> pose.position.x;
  orb_pose.position_y = msg -> pose.position.y;
  orb_pose.position_z = msg -> pose.position.z;
 
  orb_pose.orientation_x = msg -> pose.orientation.x;
  orb_pose.orientation_y = msg -> pose.orientation.y;
  orb_pose.orientation_z = msg -> pose.orientation.z;
  orb_pose.orientation_w = msg -> pose.orientation.w;

}








