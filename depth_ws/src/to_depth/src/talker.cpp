/**
 * 该例程将发布chatter话题，消息类型String
 */
 
#include <sstream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "talk.h"
#include <iostream>
using namespace std;

struct Rotation_matrix
{
  double x;
  double y;
  double z;
  /* data */
};
Rotation_matrix tag_R , orb_R ;

struct Translation_vector
{
  double x;
  double y;
  double z;
  double w;
  /* data */
};
Translation_vector tag_T , orb_T ;







int main(int argc, char **argv)
{
  // ROS节点初始化
  ros::init(argc, argv, "my_depth");
  
  // 创建节点句柄
  ros::NodeHandle nh;
  
  ros::Subscriber tag_Sub = nh.subscribe("/tag_Odometry", 10, &tag_callback);//订阅AprilTag的话题
  ros::Subscriber orb_Sub = nh.subscribe("/posestamped", 10, &orb_callback);//订阅AprilTag的话题


  // 创建一个Publisher，发布名为chatter的topic，消息类型为std_msgs::String
  ros::Publisher chatter_pub = nh.advertise<std_msgs::String>("chatter", 1000);

  // 设置循环的频率
  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok())
  {
	// 初始化std_msgs::String类型的消息
    std_msgs::String msg;
    std::stringstream ss;
    ss << "hello world " << count;
    msg.data = ss.str();

	// 发布消息
    ROS_INFO("%s", msg.data.c_str());
    chatter_pub.publish(msg);

	// 循环等待回调函数
    ros::spinOnce();
	
	// 按照循环频率延时
    loop_rate.sleep();
    ++count;
  }

  return 0;
}


void tag_callback(const nav_msgs::Odometry::ConstPtr &msg)
{
  // flight_status = msg->data;
}

void orb_callback(const geometry_msgs::PoseStamped::ConstPtr &msg)
{
  // flight_status = msg->data;
}












