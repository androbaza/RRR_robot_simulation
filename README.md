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

### Original error:
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Forward%20kinematics%20lab6/Screen%20Shot%202020-11-07%20at%2011.44.20%20AM.png)

### Tuned training and error:
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Forward%20kinematics%20lab6/Screen%20Shot%202020-11-07%20at%209.36.32%20PM.png)
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Forward%20kinematics%20lab6/Screen%20Shot%202020-11-07%20at%209.45.21%20PM.png)

## Lab 7 Planar robot Inverse Kinematics
In lab 7, ANN was tined in order to provide precise estimation of Inverse Kinematics problem solution for the planar robot. The inital error of the untuned model was around **35%**.
### Untuned training result:
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Inverse%20Kinematics%20lab7/original%20training.png)
### Untuned accuracy:
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Inverse%20Kinematics%20lab7/original%20result.png)

First, the size of the dataset was increased from 5000 to 20000 entries. The dataset generation took the most time of the training process - around 20 minutes on 2-core 2.4 GHz Intel i5-4258U CPU. The dataset was generated one time and saved.

The initial learning rate was chosen 0.01, and lr schedule was made to be peicewise with decay of 0.2 every 4 epochs. Differen batch sizes were tried, the range of 200-300 showed the best results. 5 fully connected layers with sizes 128, 128, 64, 64, each with relu activation functions and an output layer of size 5 and a Regression. The training took around 30-200 seconds each time, depending on the batch size. An error as low as **8.5%** was achieved.
### Tuned training:
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Inverse%20Kinematics%20lab7/tuned%20training.png)
### Tuned accuracy:
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Inverse%20Kinematics%20lab7/tuned%20result.png)
### Plot of real and predicted end-effector positions:
![graphs](https://github.com/androbaza/RRR_robot_simulation/blob/main/Inverse%20Kinematics%20lab7/plotted%20check%20on%20estimation.png)
