# 3D mapping using 2D LiDAR, Pixhawk, and Raspberry Pi

Dependencies:
	- ros kinetic (may work with melodic but we didn't try)
	- rplidar_ros
	- dronekit
	- Mavlink

Purpose:
This code was made as part of a REU at Auburn University. The goal of the project was to make 3D maps using a 2D LiDAR, IMU, and UAV. For this project, we ended up using a RPLIDAR A1, a 3DR IRIS (which uses a Pixhawk flight controller), and a Rspberry Pi 3B. Our method of mapping was to mount the LiDAR on its side and then have the UAV yaw 360 degrees so it gave a near-complete sphere of view of the surroundings.

Descriptions:
	- artLoc.py gives ARTificial LOCalization. It takes a .txt file as a command arg. The .txt should have each line organized 'x_pos\ty_pos\tz_pos\n'. This file also gets the current attitude of the Pixhawk using dronekit and Mavlink. This file allows scans to be taken from various known positions.
	- testPub.py gives a method of starting and stopping scans. In addition, it also controls when artLoc.py should load the next point. All that is required is some text is entered, then enter is pressed, and then everything will toggle. It's that simple!
	- node.cpp is a modified file of robopeak's rplidar_ros's node.cpp. So you should replace the node.cpp in rpildar_ros with this one so this system works the way it's intended. The only difference between the two files is this one listens for messages published by testPub.py to toggle the scans, since the stopMotor service wasn't working.

How to run:
	1. launch rplidar.launch
	2. run testPub.py and use it to turn off the rplidar
	3. run artLoc.py
	4. run 'rosrun tf static_transform_publisher x y z 0.7071678119 0 0 0.7071378119 /base_link /laser 10' where x y z are the offsets of the laser scanner from what you consider your base_link.
	- Would it have been easier to put this all in a launch file? Yes, however we didn't. If you want to make one, have at it.
