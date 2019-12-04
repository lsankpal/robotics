function [eulZYX, Tr] = euler_angles(ns,Theta,alpha,d,a)

t = transformation_matrix(ns, Theta, alpha, d,a);
rotmat = tform2rotm(t);
eulZYX = rotm2eul(rotmat);
Tr = eul2tform(eulZYX);
inveul = tform2eul(Tr);

end
