# RRR_robot_simulation
RRR robot simulated in MATLAB using Robotics Matlab Toolbox.

lab5_robot.m file is the RRR robot. 1kg load is applied at the end effector and torques in two different positions are calculated. 

planarrobot.m file is for simple simulation of planar RRRRR robot.

video of the robots moving: 

<iframe width="1280" height="557" src="https://www.youtube.com/embed/EmJKdEb-TOM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

in part 2 of the lab controllers in simulink were created. First the most simple model was used for RRR robot. Big gains were used to fight gravity. Noticeable error. 
![alt text](https://github.com/androbaza/RRR_robot_simulation/blob/main/%201.png)

next, controller with error feedback was created. The error became almost 0. 

![alt text](https://github.com/androbaza/RRR_robot_simulation/blob/main/2.png)

The same was done for the RRRRRR planar robot.

![alt text](https://github.com/androbaza/RRR_robot_simulation/blob/main/3.png)
