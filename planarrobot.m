clear
deg = pi/180;

L1 = 0.59;
L2 = 0.59;
L3 = 0.59;
L4 = 0.59;
L5 = 0.59;

L(1) = Revolute('d', 0, 'a', L1, 'alpha', 0, ...
    'I', [1, 1, 1], ...
    'm', 0.01, ...
    'Jm', 1, ...
    'G', 500, ...
    'B', 10e-4, ...
    'Tc', 10e-4, ...
    'qlim', [-2 2]);
L(2) = Revolute('d', 0, 'a', L2, 'alpha', 0, ...
    'I', [1, 1, 1], ...
    'm', 0.01, ...
    'Jm', 1, ...
    'G', 500, ...
    'B', 10e-4, ...
    'Tc', 10e-4, ...
    'qlim', [-2 2]);
L(3) = Revolute('d', 0, 'a', L3, 'alpha', 0, ...
    'I', [1, 1, 1], ...
    'm', 0.01, ...
    'Jm', 1, ...
    'G', 500, ...
    'B', 10e-4, ...
    'Tc', 10e-4, ...
    'qlim', [-2 2]);
L(4) = Revolute('d', 0, 'a', L4, 'alpha', 0, ...
    'I', [1, 1, 1], ...
    'm', 0.01, ...
    'Jm', 1, ...
    'G', 500, ...
    'B', 10e-4, ...
    'Tc', 10e-4, ...
    'qlim', [-2 2]);
L(5) = Revolute('d', 0, 'a', L5, 'alpha', 0, ...
    'I', [1, 1, 1], ...
    'm', 0.01, ...
    'Jm', 1, ...
    'G', 500, ...
    'B', 10e-4, ...
    'Tc', 10e-4, ...
    'qlim', [-2 2]);


planar_robot = SerialLink (L,'name', 'planar_robot');

home = [0 0 0 0 0];
clear L;

figure(1)

planar_robot.plot(home)
planar_robot.teach(home)
