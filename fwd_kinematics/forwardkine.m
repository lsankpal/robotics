function T_F =forwardkine(theta,d,alpha,a)
global ns;
global T_F;
global Td;
global R;

%{
prompt='enter the number of links  ';
N = input(prompt);
j = 0;
dh = zeros(N,4);
DH = zeros(N,4);
DH_1 = zeros(N,4);

c = zeros(N,4);
H = sym(zeros(N,4));
b = zeros(N,4);


t = zeros(N,2);
e = cell(N,1);
g= cell(N,1);
h= cell(N,1);
q = zeros(N,1)
syms a P R q1 q2
%}
   for i = 1:ns 
       H(i,:) = Td(i,:);
        C= H;
         q(i,1)=Td(i,1);
   end
  


   R = SerialLink(C);
   T_F = R.fkine(q);

%    x = T(1,4)
%    y = T(2,4)
%    z = T(3,4)
%    plot3(x(:),y(:),z(:),'.');
end
