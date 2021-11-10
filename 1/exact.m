clear 
clc
P=80;
a=10;
b=1;
L=60;
v=0.3;
E=1000;

x=[0:5:60];
y=5;
for i=1:length(x)
    ux(i)=(3*P)/(4*E*(a^3)*b)*(x(i)^2)*y-(P)/(4*E*(a^3)*b)*(2+v)*y^3+3*P/(2*E*(a^3)*b)*(1+v)*a^2*y-3*P*L^2*y/(4*E*a^3*b);
end
for i=1:length(x)
    uy(i)=-v*3*P/(4*E*a^3*b)*x(i)*y^2-P/(4*E*a^3*b)*x(i)^3+3*P*L^2/(4*E*a^3*b)*x(i)-P*L^3/(2*E*a^3*b);
end
uy=uy';
ux=ux';