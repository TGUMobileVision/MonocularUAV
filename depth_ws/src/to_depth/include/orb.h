


#include <ros/ros.h>



// #include <apriltags2_ros/AprilTagDetectionArray.h>
#include <sensor_msgs/CameraInfo.h>
// #include <nav_msgs/Odometry.h>
#include <geometry_msgs/PoseStamped.h>












// void tag_callback(const nav_msgs::Odometry::ConstPtr &msg);
void orb_callback(const geometry_msgs::PoseStamped::ConstPtr &msg);