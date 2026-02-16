function der_x = CARRO_sistemas_mecanicos(t, x)

m1 = 290;    
b1 = 1000;   
m2 = 59;      
k1 = 16182;   
f  = 0;          
k2 = 19000;
z1 = @(t) 0.05 * sin(0.5 * pi * t); 
z2 = @(t) 0.05 * sin(20 * pi * t);

der_x = zeros(8,1);     

der_x(1) = x(2);

der_x(2) = (f/m1) - (b1/m1)*x(2) + (b1/m1)*x(4) - (k1/m1)*x(1) + (k1/m1)*x(3);

der_x(3) = x(4);

der_x(4) = (b1/m2)*x(2) - (b1/m2)*x(4) + (k1/m2)*x(1) - (k1/m2)*x(3) - (k2/m2)*x(3) - (f/m2) + (k2/m2)*z1(t);

der_x(5) = x(6);

der_x(6) = (f/m1) - (b1/m1)*x(6) + (b1/m1)*x(8) - (k1/m1)*x(5) + (k1/m1)*x(7);

der_x(7) = x(8);

der_x(8) = (b1/m2)*x(6) - (b1/m2)*x(8) + (k1/m2)*x(5) - (k1/m2)*x(7) - (k2/m2)*x(7) - (f/m2) + (k2/m2)*z2(t);


end
