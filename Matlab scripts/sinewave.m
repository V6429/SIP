% sine wave
fsampling = 60;
tiv = 1/fsampling;
t= 0: tiv : 3-tiv; % samples at 3 sec

fsignal = 2 ; % a 2 hz signal
w = 2*pi*fsignal;
y = sin(w*t);

plot(t,y,'k'); 
axis([0 3 -1.5 1.5])
ylabel("amplitude");
xlabel("seconds");
title('sine signal')