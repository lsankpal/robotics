function R(theta,d,alpha,a)

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

syms a P R q1 q2
j = 0;
d1 =0; d2=0;
   for i = 1:N 
       
        

    L = ['Enter the DH parameters for the link  ' ,num2str(i)];
    disp(L);
    prompt = 'in the format theta d a alpha' ; 
    dh(i,:) = input(prompt)
    H(i,:) = [dh(i,1) dh(i,2) dh(i,3) dh(i,4)]
   c = H;
  
   end
   R = SerialLink(c);
end