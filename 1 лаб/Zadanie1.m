% k = 6; %значение коеффициента К
% A = eye(8); %единичная матрица
% 
% %Считать
% m1_1 = A(k,:); %К строка матрицы А
% m1_2 = A([1,3,k],:); %1,3,К строка матрицы А
% m1_3 = A([4:k],:); %с 4 по 6 строки матрицы А
% m2_1 = A(:,[2,k]); %К столбец матрицы А
% m2_2 = A(:,[2:k]); %с 2 по К столбцы матрицы А
% 
% %Удалить
% m3_1 = A(2:end,[1:5,7:end]); %1 строка и К столбец матрицы А
% 
% %добавить удаленный К столбец без 1 строчки
% C = A(2:end,k); %К столбетц
% m4_1 = [m3_1(:,1:5) C m3_1(:,6:end)]; 
% 
% %сформировать блочную матрицу
% a = eye(2,k);
% b = ones(2,k);
% c = zeros(2,k);
% d = eye(2,k);
% m4_2 = [a b; c d];

% p1.1
% x = [0:.01:10];
% y1 = cos(x);
% figure(1),plot(x,y1), grid, legend('cos(x)')
% y2 = sin(x);
% figure(2),plot(x,y2,'r'), grid, legend('sin(x)')

% p3.1
y = @(x) sin(x);
fplot(y,[0 10],'m'), grid, legend('sin(x)')

% x = [-5:0.01:5];
% y1 = 4*x.^2 + 8*x + 5;
% y2 = 5*x.^3 + 2*x.^2 + x + 9;
% hold on;
% plot(x,y1,'g');
% plot(x,y2,'r'),grid on,xlabel('x'),ylabel('y');
% hold off;
% figure;
% x = [-5:0.01:5];
% y3 = 5*x.^2 + 9*x + 2;
% y4 = sin(x);
% subplot(1,2,1);
% plot(x,y3),xlabel('x'),ylabel('y'),title('Polynomial Graph'),grid on;
% subplot(1,2,2);
% plot(x,y4),xlabel('x'),ylabel('sin(x)'),title('Sin(x) Graph'),grid on, axis equal;