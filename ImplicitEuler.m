% Implicit-Euler method
% a,b is the range for independent variable t.
% u0 is the initial value for u(0)=u0
% h is the length of iterative step length
% f(t,u) is the right side of fundamental form ODE: du/dt=f(t,u)
% the output is discrete points of t,u

function [t,u]=ImplicitEuler(a,b,u0,h)
t=a:h:b;
u(1)=u0;
for (n=1:1:length(t)-1)
    u(n+1)=u(n)-1;
    temp=u(n);
    while(abs(temp-u(n+1)>0.001))
    u(n+1)=temp
    temp=u(n)+.*f(t(n+1),u(n+1))
    end
end
