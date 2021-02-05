%data для пяти точек
x = [-1:0.5:1];
size = size(x);
y=1./(1+25*x.^2);

%сетка и соответствующие значения f(x) 
hold on;
plot(x,y,'or');

%интерполирующая функция для значений сетки с малым шагом
p = polyfit(x,y,4) 
xx = [-1:0.01:1];
yy = polyval(p,xx);

%функция f(x) для значений сетки с малым шагом
xxx = [-1:0.01:1];
yyy = 1./(1+25*xxx.^2);
plot(xx,yy,xxx,yyy),grid;
hold off;