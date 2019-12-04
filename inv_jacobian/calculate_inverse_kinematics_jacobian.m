function qcomp= calculate_inverse_kinematics_jacobian(DH_params,n_links,link_type,link_limits,qd,q0)

for i= 1:n_links
    links(i)=Link('d',DH_params(i,2),'a',DH_params(i,3),'alpha',DH_params(i,4));
    if link_type(i)== 'PRISMATIC'
        links(i).qlim = [0,link_limits(i)];
    end
end

R=SerialLink(links);
Td=R.fkine([qd]);
masking=[1 1 1 0 0 0]';
qcomp=rad2deg(R.ikine(Td,q0,masking,'pinv'));
end