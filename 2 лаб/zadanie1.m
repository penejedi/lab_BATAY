%значение вектор x от 0 до 5 с шагом 0,1
x = [0:.1:5];
%значение w
w1 = 1;
w2 = 2;
w3 = 3;
%вычислим y(x) для каждого значения w
y1 = 10+5.*exp(-x).*cos(w1.*x+0.5);
y2 = 10+5.*exp(-x).*cos(w2.*x+0.5);
y3 = 10+5.*exp(-x).*cos(w3.*x+0.5);
%построим все графики в одних осях координат
plot(x,y1,'b',x,y2,'r',x,y3,'y'),grid;
title(' График для w=1,2,3 w=1,2,3');
legend('y1','y2','y3');
xlabel('x');
ylabel('y');
%чтобы одновременно на экран выводятся все графики, используем функции figure
%построим каждый график в отдельных осях
figure;
plot(x,y1,'b'),grid;
title(' График для w=1');
xlabel('x');
ylabel('y');
figure;
plot(x,y2,'r'),grid;
title(' График для w=2');
xlabel('x');
ylabel('y');
figure;
plot(x,y3,'y'),grid;
title(' График для w=3');
xlabel('x');
ylabel('y');
figure; 
%построим графики с использованием фикции subplot
subplot(1,3,1);
plot(x,y1,'b'),grid,axis equal;
title('График для w=1');
xlabel('x');
ylabel('y');
subplot(1,3,2);
plot(x,y2,'r'),grid,axis equal;
title('График для w=2');
xlabel('x');
ylabel('y');
subplot(1,3,3);
plot(x,y3,'y'),grid,axis equal;
title('График для w=3');
xlabel('x');
ylabel('y');
