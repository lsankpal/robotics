
%function T = transformation_matrix(ns,Theta,alpha,d,a)
ns= 3;
Theta = [90 90 90];
d=[1 2  3];
a=[1 2 3];
alpha = [0 0 0];
euler_angles(ns, Theta, alpha,d,a)
for i=1:ns
    
    T = eye(4);

    % ROTATION FOR X
    T(1,1) = cosd((Theta(i)));
    T(2,1) = sind((Theta(i)));
    T(3,1)=0;
    T(4,1)=0;

    % ROTATION FOR Y 
    T(1,2) = -(sind(Theta(i)))*(cosd(alpha(i)))*(1);
    T(2,2) = (cosd(Theta(i)))*(cosd(alpha(i)));
    T(3,2) = (sind(alpha(i)));
    T(4,2)=0;
    % ROTATION FOR Z
    T(1,3) = (sind(Theta(i)))*(sind(alpha(i)));
    T(2,3) = -(cosd(Theta(i)))*(sind(alpha(i)))*(1);
    T(3,3) = (cosd(alpha(i)));
    T(4,3)=0;

    % TRANSLATION VECTORns 
    T(1,4) = (a(i))*(cosd(Theta(i)));
    T(2,4) = (a(i))*(sind(Theta(i)));
    T(3,4) = d(i);
    T(4,4)=0;



end

%end