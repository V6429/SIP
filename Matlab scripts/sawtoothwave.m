% square signal 
% matlab function with duty cycle
% square()

fsignal = 100;            % signal frequency in hz
w = 2 * pi * fsignal;     % signal frequency in radians
signalduration = 0.03;    % signal duration in seconds

fsampling = 20000;
tiv = 1/fsampling;
t = 0: tiv : signalduration-tiv;

y=sawtooth(w*t);
plot(t,y,'k'); 
axis([0 signalduration -1.5 1.5]);
xlabel('seconds'); title('square signal');