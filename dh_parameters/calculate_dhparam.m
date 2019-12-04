function Td = calculate_dhparam(ns,Z_angle,link_length, joint_type)

for i=1:ns
    if joint_type == "PRISMATIC"
        Td(i,1) = 0;
    end
end

for i = 1:ns
    if ns~=i
        Td(i,3) = Z_angle(i+1) - Z_angle(i);
    else
        Td(i,3) = Z_angle(i) - Z_angle(i);
    end
    
end
   
for i = 1:ns
   if i ~=ns
        if Td(i,3)==0
           Td(i,4) = link_length(i);
        else
            Td(i,4) = 0;
        end
   else
       if joint_type == "PRISMATIC"
           if Z_angle(i+1) - Z_angle(i) == 0
               Td(i,4)=0;
           else
               Td(i,4)=link_length(i);
           end
       else
           if Z_angle(i+1) - Z_angle(i) ~= 0
               if Td(i,3)==0
                   Td(i,4)=link_length(i)
               end
           else
               Td(i,4) = link_length(i)
           end
       end
   
  
    
end

for i = 1:ns
    if ns ~= i & i ~= 1
        if joint_type(i) == "REVOLUTE" & joint_type(i-1) == "REVOLUTE"
            if Z_angle(i-1) ~= Z_angle(i+1)
                Td(i,2)= 0;
            end
        end
    end
end
global Td;
Td;
end