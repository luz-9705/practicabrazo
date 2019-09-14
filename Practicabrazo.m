clear all
close all
clc

promt = 'introduzca el valor (grados) de la rotacon X (phi):';
 theta1_deg = input(promt);
 theta1_rad_fin = deg2rad( theta1_deg);
 
 promt = 'introduzca el valor (grados) de la rotacon Y (theta):';
 theta2_deg = input(promt);
 theta2_rad_fin = deg2rad(theta2_deg);
 
 
 for theta1_rad=0:0.08:theta1_rad_fin
%     clf;

printAxis();
p1 = [0;0;0];
l1 = 8;
% theta1_deg = 30;
% theta1_rad = deg2rad(theta1_deg);

 
%  clf;
TRz1 = [cos(theta1_rad) -sin(theta1_rad) 0 0; sin(theta1_rad) cos(theta1_rad) 0 0; 0 0 1 0; 0 0 0 1];
TTx1 = [1 0 0 l1; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T1 = TRz1*TTx1;
p2 = T1(1:3,4);

v1x = TRz1(1:3,1);
v1y = TRz1(1:3,2); 

v2x = p2+T1(1:3,1);
v2y = p2+T1(1:3,2);

line([p1(1) p2(1)],[p1(2) p2(2)],[p1(2) p2(2)],'color',[1 1 0],'linewidth',5);

line([p1(1) v1x(1)],[p1(2) v1x(2)],[p1(2) v1x(2)],'color',[1 0 0],'linewidth',5);
line([p1(1) v1y(1)],[p1(2) v1y(2)],[p1(2) v1y(2)],'color',[0 1 0],'linewidth',5);


line([p2(1) v2x(1)],[p2(2) v2x(2)],[p2(2) v2x(2)],'color',[0.3 0 0.4],'linewidth',5);
line([p2(1) v2y(1)],[p2(2) v2y(2)],[p2(2) v2y(2)],'color',[0.8 1 0.5],'linewidth',5);
theta2_rad=0;
l2 = 4;
TRz2 = [cos(theta2_rad) -sin(theta2_rad) 0 0; sin(theta2_rad) cos(theta2_rad) 0 0; 0 0 1 0; 0 0 0 1];
TTx2 = [1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T2 = TRz2*TTx2;

Tf = T1*T2;

p3 = Tf(1:3,4);
v3x = p3+Tf(1:3,1);
v3y = p3+Tf(1:3,2);

line([p2(1) p3(1)],[p2(2) p3(2)],[p2(2) p3(2)],'color',[0.1 0 0.5],'linewidth',3);
line([p3(1) v3x(1)],[p3(2) v3x(2)],[p3(2) v3x(2)],'color',[1 0 0.5],'linewidth',5);
line([p3(1) v3y(1)],[p3(2) v3y(2)],[p3(2) v3y(2)],'color',[0.3 1 0.4],'linewidth',5);
pause(0.2)
end
% theta2_deg = -15;
theta2_rad_fin = deg2rad(theta2_deg);
for  theta2_rad=0:-0.2: theta2_rad_fin
l2 = 4;
TRz2 = [cos(theta2_rad) -sin(theta2_rad) 0 0; sin(theta2_rad) cos(theta2_rad) 0 0; 0 0 1 0; 0 0 0 1];
TTx2 = [1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T2 = TRz2*TTx2;

Tf = T1*T2;

p3 = Tf(1:3,4);
v3x = p3+Tf(1:3,1);
v3y = p3+Tf(1:3,2);

line([p2(1) p3(1)],[p2(2) p3(2)],[p2(2) p3(2)],'color',[0.1 0 0.5],'linewidth',3);
line([p3(1) v3x(1)],[p3(2) v3x(2)],[p3(2) v3x(2)],'color',[1 0 0.5],'linewidth',5);
line([p3(1) v3y(1)],[p3(2) v3y(2)],[p3(2) v3y(2)],'color',[0.3 1 0.4],'linewidth',5);

pause (0.1)
 end
grid
    

