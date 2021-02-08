% 
sys = zpk([],[0 -1],50);
%
sys1 = feedback(sys,1)
%
step(sys1),grid;
[y,t,x] = step(sys1);
[ym,i] = max(y);
%
ym
%
text(t(i),ym+.1,'Mp=1.8003');
text(0.443-.1,0,'Tp=0.4443');
text(7.6421-.1,0,'Tc=7.6421');
si = stepinfo(wz);