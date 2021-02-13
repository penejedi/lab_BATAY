A = [0 1 0 0 0 0 0 0;
     1 1 0 0 0 0 0 0;
     0 0 0 1 0 0 0 0;
     0 0 1 1 0 0 0 0;
     0 0 0 0 0 1 0 0;
     0 0 0 0 1 1 0 0;
     0 0 0 0 0 0 0 1;
     0 0 0 0 0 0 1 1];
B = [9; 2; 2; 4; 4; 3; 3; 4]; 
x = A \ B;

%Построить график и указать точки сетки
u = [0 1 2 3 4];
v = [9 2 4 3 4];
xx = 0:.1:1;
x11 = x(1)*xx + x(2);
x22 = x(3)*xx + x(4);
x33 = x(5)*xx + x(6);
x44 = x(7)*xx + x(8);
plot(u,v,'or',xx,x11,xx+1,x22,xx+2,x33,xx+3,x44),grid
