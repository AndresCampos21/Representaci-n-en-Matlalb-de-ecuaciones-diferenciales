%dinamica pendulo invertido
function dx = din_ipend(t,x)
Ip = 0.0079;
Mc = 0.7031;
Lp = 0.3302;
Mp = 0.23;
Fc = 0;
Beq = 4.3;
G = 9.81;
Bp = 0.0024;

%x(1) = x
%x(2) = alpha
%x(3) = xdot
%x(4) = alphadot

Den = (Mc+Mp)*Ip+Mc*Mp*Lp^2+Mp^2*Lp^2*sin(x(3))^2;
dx = zeros(4,1);
dx(1) = x(2);
dx(2) = ((Ip+Mp*Lp^2)*Fc+Mp^2*Lp^2*G*cos(x(3))*sin(x(3))-(Ip+Mp*Lp^2)*Beq*x(2)-(Ip*Mp*Lp-Mp^2*Lp^3)*x(4)^2*sin(x(3))-Mp*Lp*x(4)*cos(x(3))*Bp)/Den;
dx(3) = x(4);
dx(4) = ((Mc+Mp)*Mp*G*Lp*sin(x(3))-(Mc+Mp)*Bp*x(4)+Fc*Mp*Lp*cos(x(3))-Mp^2*Lp^2*x(4)^2*sin(x(3))*cos(x(3))-Beq*Mp*Lp*x(2)*cos(x(3)))/Den;
