#!/usr/bin/env python
import rospy
from std_msgs.msg import String

if __name__ == '__main__':
	rospy.init_node('test_pub', anonymous=True)
	pub = rospy.Publisher('power', String, queue_size=1000)
	while not rospy.is_shutdown():
		s = raw_input()
		pub.publish(s)
