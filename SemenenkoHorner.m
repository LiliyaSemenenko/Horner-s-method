function [y,z] = SemenenkoHorner(n,a,x0)
% n = 4;
% a = [-4,3,-3,0,2];
% x0 = -2;
%Algorithm 2.7 Horner method
y = a(end); 
z = a(end); 
for j = n-1:-1:1
    y = x0*y + a(j+1);
    z = x0*z + y;
end
y = x0*y + a(1);