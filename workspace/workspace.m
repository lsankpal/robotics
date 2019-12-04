function workspace(R,lim)


[A,ns] = size(R);
qin = zeros(1,ns);


for i = 1:N
    q{i} = linspace(lim(i,1),lim(i,2),100);
end

[Q{1:numel(q)}]= ndgrid(q{:});


y = sym('q',[N 1]);
T = R.fkine(y);


P = T(:,4);
x1 = matlabFunction(P(1,1));
y1 = matlabFunction(P(2,1));
z1 = matlabFunction(P(3,1));
arx = arg(x1);
ary = arg(y1);
arz = arg(z1);
X =x1(Q{arx}); 
size(X);
Y = y1(Q{ary});
size(Y);
Z = z1(Q{arz});
size(Z);
if isempty(arz)
    Z= zeros(m,n);
end
plot3(X(:),Y(:),Z(:),'.');
end
