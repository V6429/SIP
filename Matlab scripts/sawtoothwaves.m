% Sawtooth signals
fy=100;              % signal frequency in Hz
w=2*pi*fy;           % signal frequency in rad/s
signalduration=0.03; % signal duration in seconds

fsampling=20000;              % sampling frequency in Hz
tiv=1/fsampling;              % time interval between samples;
t=0:tiv:(signalduration-tiv); % time intervals set

y=sawtooth(w*t,0.1); %signal data set (width 0.1--> Wave maximum location )
subplot(2,2,1); plot(t,y,'k'); %plots figure
axis([0 signalduration -1.5 1.5]);
xlabel('seconds'); title('sawtooth signal');

y=sawtooth(w*t,0.3); %signal data set (width 0.3--> scalar value between 0 &1)
subplot(2,2,2); plot(t,y,'k'); 
axis([0 signalduration -1.5 1.5]);
xlabel('seconds'); title('sawtooth signal');


y=sawtooth(w*t,0.5); 
subplot(2,2,3); plot(t,y,'k'); 
axis([0 signalduration -1.5 1.5]);
xlabel('seconds'); title('sawtooth signal');

y=sawtooth(w*t,0.9); 
subplot(2,2,4); plot(t,y,'k'); 
axis([0 signalduration -1.5 1.5]);
xlabel('seconds'); title('sawtooth signal');