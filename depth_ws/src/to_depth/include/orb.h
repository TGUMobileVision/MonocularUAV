


#include <ros/ros.h>



// #include <apriltags2_ros/AprilTagDetectionArray.h>

#include <geometry_msgs/PoseStamped.h>
//#include <AprilTagDetectionArray.h>













//void tag_callback(const apriltags2_ros::AprilTagDetectionArray::ConstPtr &msg);
void orb_callback(const geometry_msgs::PoseStamped::ConstPtr &msg);
