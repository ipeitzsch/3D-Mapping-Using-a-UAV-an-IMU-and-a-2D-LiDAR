#!/usr/bin/env python
import rospy
import tf
import sys
from std_msgs.msg import String
from dronekit import connect

first = True
toChange = False
lines = []
count = 0
coord = [0,0,0]
rpy = [0,0,0]

def tel(msg):
	global toChange, first, lines, count, coord
	print first or toChange
	if toChange or first:
		coord = lines[count].split()
		print coord
		for i in range(len(coord)):
			coord[i] = float(coord[i])
		count += 1
	first = False
	toChange = not toChange

def att(self, attr, value):
	global rpy, init
	rpy[0] = v.attitude.roll
	rpy[1] = v.attitude.pitch
	rpy[2] = v.attitude.yaw
	if first or not toChange:
		init = rpy[:]
if __name__ == '__main__':
	if len(sys.argv) != 2:
		print 'Please provide a single input file'
		sys.exit(1)
	rospy.init_node('trans_telem', anonymous=True)
	v = connect('/dev/ttyACM0', 115200, wait_ready=True, rate=40)
	rospy.loginfo('Conencted')
	v.add_attribute_listener('attitude', att)
	f = open(sys.argv[1], 'r')
	lines = f.readlines()
	rospy.loginfo('Got coordinates')
	f.close()
	print lines
#	sys.exit(0)
	rospy.loginfo('Added attitude listener')	
	rospy.Subscriber('power', String, tel, queue_size=10)
	r = rospy.Rate(40)
	while not rospy.is_shutdown():
		br = tf.TransformBroadcaster()
		tpp = rpy[:]
		br.sendTransform((float(coord[0]), float(coord[1]), float(coord[2])), tf.transformations.quaternion_from_euler(tpp[0] - init[0], tpp[1] - init[1], tpp[2] - init[2]), rospy.Time.now(), '/base_link', '/map')
	v.remove_attribute_listener('attitude', att)
	v.close()
