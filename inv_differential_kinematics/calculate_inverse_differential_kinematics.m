function qstring = calculate_inverse_differential_kinematics(Jacobian,V,U,n_links)

Jacobian(:,n_links) = U;
q = pinv(Jacobian)*V;
[m,n] = size(U);
for j=1:n_links
    if(Jacobian(m-1,j)==0)&&(Jacobian(m-2,j)==0)&&(Jacobian(m-3,j)==0)
        qstring(j) = sprintf('D_dot %d = %0.2f \n',j,q(j));
    else
        qstring(j) = sprintf('Theta_dot %d = %0.2f \n',j,q(j));
    end
end

    
    
    

