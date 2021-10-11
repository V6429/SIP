% sine wave
fsampling = 60;
tiv = 1/fsampling;
t= 0: tiv : 3-tiv; % samples at 3 sec

fsignal = 2 ; % a 2 hz signal
w = 2*pi*fsignal;

ysine = sin(w*t);
plot(t,ysine,'k'); hold on;

ycos = cos(w*t);
plot(t,ycos,'--k'); 

axis([0 3 -1.5 1.5])
ylabel("amplitude");
xlabel("seconds");
title('sine and cosine signal')