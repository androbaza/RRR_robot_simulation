# RRR_robot_simulation
## Lab 5.1 Building RRR robot 
In lab 5.1, RRR robot simulated in MATLAB using Robotics Matlab Toolbox.

lab5_robot.m file is the RRR robot. 1kg load is applied at the end effector and torques in two different positions are calculated. 

planarrobot.m file is for simple simulation of planar RRRRR robot.

video of the robots moving: https://www.youtube.com/embed/EmJKdEb-TOM

## Lab 5.2 RRR Feedback in Simulink 
In part 5.2 of the lab controllers in simulink were created. First the most simple model was used for RRR robot. Big gains were used to fight gravity. Noticeable error. 
![alt text](https://github.com/androbaza/RRR_robot_simulation/blob/main/%201.png)

next, controller with error feedback was created. The error became almost 0. 

![alt text](https://github.com/androbaza/RRR_robot_simulation/blob/main/2.png)

The same was done for the RRRRRR planar robot.

![alt text](https://github.com/androbaza/RRR_robot_simulation/blob/main/3.png)

## Lab 6 Planar robot Forward Kinematics
In lab 6, ANN was tuned in order to provide lower MSE in FK estimation for the planar robot. The initial error was around **20%**. It was reduced to around **3%** using an additional `fullyConnectedLayer(256)` and a `tanhLayer()`.

Original error:
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Forward%20kinematics%20lab6/Screen%20Shot%202020-11-07%20at%2011.44.20%20AM.png)

Tunded training and error:
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Forward%20kinematics%20lab6/Screen%20Shot%202020-11-07%20at%209.36.32%20PM.png)
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Forward%20kinematics%20lab6/Screen%20Shot%202020-11-07%20at%209.45.21%20PM.png)

## Lab 7 Planar robot Inverse Kinematics

![graphs]()
![graphs]()
![graphs]()
