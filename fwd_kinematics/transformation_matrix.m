function  [T]  = transformation_matrix(theta,d,alpha,a)

T = eye(4);

% ROTATION FOR X
T(1,1) = cosd((theta));
T(2,1) = sind((theta));
T(3,1)=0;
T(4,1)=0;

% ROTATION FOR Y 
T(1,2) = -(sind(theta))*(cosd(alpha))*(1);
T(2,2) = (cosd(theta))*(cosd(alpha));
T(3,2) = (sind(alpha));
T(4,2)=0;
% ROTATION FOR Z
T(1,3) = (sind(theta))*(sind(alpha));
T(2,3) = -(cosd(theta))*(sind(alpha))*(1);
T(3,3) = (cosd(alpha));
T(4,3)=0;

% TRANSLATION VECTOR
T(1,4) = (a)*(cosd(theta));
T(2,4) = (a)*(sind(theta));
T(3,4) = d;
T(4,4)=0;
T
end