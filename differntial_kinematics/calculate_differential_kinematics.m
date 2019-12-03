function qcomp = calculate_differential_kinematics(DH_params,n_links,link_type,link_limits,q)

for i=1:n_links
    if link_type(i)=='PRISMATIC'
        links(i) = Link('prismatic','theta',DH_params(i,1),'d',DH_params(i,2),'a',DH_params(i,3),'alpha',DH_params(i,4));
        links(i).qlim = [0,link_limits(i)];
    else
        links(i) = Link('revolute','theta',DH_params(i,1),'d',DH_params(i,2),'a',DH_params(i,3),'alpha',DH_params(i,4),'prismatic');
    end
end

R=SerialLink(links);
J = R.jacob0(q);
qcomp=J;
if n_links >=6
    if det(J(1:3,1:3))==0
        disp('Arm Singularity')
    end
    if det(J(n_links-3:n_links,n_links-3:n_links))==0
        disp('Wrist Singularity')
    end
end



    
 