n_links=3;
link_type=['R' 'R' 'P']
qd=[0 0 0.5];
q0=[pi pi/2 pi/3];
link_limits=[0 0 0.3];

a=[0 -0.5 0];
d=zeros(1,3);
alpha=zeros(1,3);
theta=zeros(1,3);

dh=[theta' d' a' alpha'];

x=calculate_inverse_kinematics_jacobian(dh,n_links,link_type,link_limits,qd,q0)