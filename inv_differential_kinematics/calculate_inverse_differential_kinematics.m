function [qcomp,tcomp] = calculate_inverse_differential_kinematics(DH_params,q0,qd,n_links,link_type,link_limits)

for i=1:n_links
    if link_type(i)=='PRISMATIC'
        links(i) = Prismatic('theta',DH_params(i,1),'a',DH_params(i,3),'alpha',DH_params(i,4));
        links(i).qlim = [0,link_limits(i)];
    else
        links(i) = Revolute('d',DH_params(i,2),'a',DH_params(i,3),'alpha',DH_params(i,4));
    end
end

R=SerialLink(links);
Td = R.fkine(qd);
mask = [1 1 1 0 0 0]';
qcomp = R.ikine(Td,q0,mask,'pinv');
tcomp = R.fkine(qcomp);
end

    
    
    

