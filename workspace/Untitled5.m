clc
clear all
close all
prompt='enter the number of links  ';
N = input(prompt);
j = 0;
dh = zeros(N,2);
DH = zeros(N,2);
DH_1 = zeros(N,2);
c = zeros(N,4);
H = sym(zeros(N,4));
b = zeros(N,4);
q = zeros(N,1);
Q = zeros(1,N);
t = zeros(N,2)
syms a P R q1 q2
for i = 1:N
       j = j +1;
    Q = sym('q',[N,1]);
    d = sym('d',[N,1]);
     %prompt = ['Enter the length of the link  ',num2str(j)];
     %L(j) = input(prompt);
   X = ['Enter the DH parameters for the link  ' ,num2str(j)];
    disp(X);
    prompt = 'in the format theta(deg) d(deg) a alpha' ; 
    dh(i,:) = input(prompt)
    H(i,:) = [Q(i) d(i) dh(i,1) dh(i,2)]
   c = H;
 
end
DH = SerialLink(c)
DH
T = DH.fkine(Q);
P = T(:,4)
 

syms qmin qmax
 qmin = zeros(1,N)
qmax = zeros(1,N)
j = 0;
for i = 1:N
       j = j +1;
  
   prompt = ['Enter the qmin and qmax for  link  ' ,num2str(j)];
   
    Te(i,:) = input(prompt);
    t(i,:) = [Te(i,1) Te(i,2)];
qmin(i,1) = t(i,1);
qmax(i,1) = t(i,2);
 Th(i,:) = linspace(qmin(i,1),qmax(i,1),100)*pi/180;
 
end

% syms dmin dmax
%  dmin = zeros(1,N)
% dmax = zeros(1,N)
% j = 0;
% for i = 1:N
%        j = j +1;
%   
%    prompt = ['Enter the dmin and dmax for  link | enter zero if its a revolute link ' ,num2str(j)];
%    
%     Td(i,:) = input(prompt);
%     d(i,:) = [Td(i,1) Td(i,2)];
% dmin(i,1) = d(i,1);
% dmax(i,1) = d(i,2);
%  Thd(i,:) = linspace(dmin(i,1),dmax(i,1),100);
%  
% end
% 
% Tfd1 = Thd(1,:)
% Tfd2 = Thd(2,:)
% [TFd1,TFd2] = meshgrid(Tfd1,Tfd2)
Tf1 = Th(1,:)
Tf2 = Th(2,:)
[TF1,TF2] = meshgrid(Tf1,Tf2)
x = P(1,1);
y = P(2,1);
z = P(3,1);
q1 = TF1;
q2 = TF2;
%d1 = TFd1;
%d2 = TFd2;
X=round(eval(x))
Y = round(eval(y));
Z = round(eval(z));
figure(1)
plot(X(:),Y(:),'.')
hold on
figure(2)
plot(Y(:),Z(:),'.')

