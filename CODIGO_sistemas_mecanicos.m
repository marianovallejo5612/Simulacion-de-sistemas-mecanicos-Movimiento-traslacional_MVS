T = [0 10];
x0 = zeros(8, 1); 
[t, x] = ode45(@CARRO_sistemas_mecanicos, T, x0);

figure
subplot(2,1,1)
plot(t, x(:,1), t, x(:,3))
title('z1')
legend('Masa 1 (x1)', 'Masa 2 (x2)')
grid on

subplot(2,1,2)
plot(t, x(:,5), t, x(:,7))
title('z2')
legend('Masa 1 (x1)', 'Masa 2 (x2)')
grid on
xlabel('Tiempo (s)')



