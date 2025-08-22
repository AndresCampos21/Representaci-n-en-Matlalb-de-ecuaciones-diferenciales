[t,x]=ode45(@din_ipend,[0 10],[0 0 deg2rad(1) 0]);

figure(1);
plot(t,x(:,1), 'r', 'LineWidth', 2);
title('Posicion del carro');
xlabel('tiempo');
ylabel('Posicion');
grid on

figure(2);
plot(t, x(:,3), 'b', 'LineWidth', 2);
title('Posicion del pendulo');
xlabel('tiempo');
ylabel('Posicion');
grid on
