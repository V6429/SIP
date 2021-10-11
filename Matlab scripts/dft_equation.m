clc
clear all

x=input("enter the sequence :");
N=length(x); % we got total no of elements in sample

% dft eqn
% for each K we have have to compute every n no of elements 
% therefore two loops 
for k=1:N
    X=0;
    for n=1:N
        X = X+x(n)*exp(-i*2*pi*(k-1)*(n-1)/N);
    end
    X1(k)=X; % appending the calculated value for each K

end

X1
X2=fft(x)  % this is inbuilt FFT function from matlab
e=X1-X2    % checking for any difference 
           % small difference is possible


% PLOTTING MAGNITUDE AND PHASE
% the data we have is in a+ib form
% we need it i magnitude and phase
[theta,radius]=cart2pol(real(X1),imag(X1))
% cart2pol Transform Cartesian to polar coordinates.
%     [TH,R] = cart2pol(X,Y) transforms corresponding elements of data
%     stored in Cartesian coordinates X,Y to polar coordinates (angle TH
%     and radius R).  The arrays X and Y must be the same size (or
%     either can be scalar). TH is returned in radians.
n=0:(N-1);

figure(1)
plot(n,radius);
title("Maginitude of the seq in frq domain")
ylabel("Mag")
xlabel("freq index")

figure(2)
% plot(n,theta);
stem(n,theta)
title("angle")
ylabel("Radians")
xlabel("freq index")

