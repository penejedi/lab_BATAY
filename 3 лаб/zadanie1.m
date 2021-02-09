% задание 1
k=6;
% построим 1-й график
subplot(2,2,1);
y1=@(x)sin(k./x);
fplot(y1,[.01 .1]),grid;
xlabel('x');
ylabel('y1');
title('1-й график');
% построим 2-й график
subplot(2,2,2);
y2=@(x)(2*k*sin(x)./x);
fplot(y2,[-20 20]),grid;
xlabel('x');
ylabel('y2');
title('2-й график');
% построим 3-й график
subplot(2,2,3);
y3=@(x)k*sin(x);
fplot(y3,[-pi pi]),grid;
xlabel('x');
ylabel('y3');
title('3-й график');
% построим 4-й график
subplot(2,2,4);
y4=@(x)k*x.^2;
fplot(y4,[-4 4]),grid;
xlabel('x');
ylabel('y4');
title('4-й график');
