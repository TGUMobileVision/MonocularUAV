


#include <ros/ros.h>



// #include <apriltags2_ros/AprilTagDetectionArray.h>
#include <geometry_msgs/PoseStamped.h>
#include <nav_msgs/Odometry.h>













void tag_callback(const nav_msgs::Odometry::ConstPtr &msg);
void orb_callback(const geometry_msgs::PoseStamped::ConstPtr &msg);