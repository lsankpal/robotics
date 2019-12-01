function thetas = calculate_inv_kinematics(DH_params,n_links,T_matrix)

for i= 1:n_links
    links(i)=Link('d',DH_params(i,2),'a',DH_params(i,3),'alpha',DH_params(i,4));
    
end

R=SerialLink(links);
R.ikunc(T_matrix);
thetas=rad2deg(R.ikunc(T_matrix));

end
