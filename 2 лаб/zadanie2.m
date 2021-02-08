% задание 2 пункт 1
k = 6;
w1 = tf([5 1],[10 11 1]);
w2 = tf([10*k],[1 2 10*k]);

% пункт 1.2
% умножаем полином числителя
w1_num = [5 1];
w2_num = [10*k];
w_num = conv(w1_num,w2_num);
% умножаем полином знаменателя
w1_denom = [10 11 1];
w2_denom = [1 2 10*k];
w_denom = conv(w1_denom,w2_denom);
% найти корни полиномов
r_num = roots(w_num);
r_denom = roots(w_denom);
% найти Кус моделей w1(s), w2(s), w(s)
% s = 0
ws = tf([w_num],[w_denom]);
kus1 = 1 / 1;
kus2 = (10*k) / (10*k);
kus3 = 60 / 60;

% пункт 1.3
% формирование послед. соединения с помощью функции series
sys = series(w1, w2);
p = pole(sys);     % вычислим полюсы модели
z = tzero(sys);    % вычислим нули модели
k = dcgain(sys);   % вычислим Кус

% пункт 1.4
% w3(s) = sys./(1+sys);

% пункт 1.5
sys1 = feedback(sys,1);
