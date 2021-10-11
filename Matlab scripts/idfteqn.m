clc
clear all

x=input("enter the sequence in (frequency domain):");
% x=[10 1-3j 0 1+3j] %---->idft = [3 4 2 1]
% x=[10  -2+2j  -2   -2-2j ] %---> [1 2 3 4]

N=length(x); % we got total no of elements in sample

% for each n loop through k
for n=1:N
    X=0;
    for k=1:N
        X = X+x(k)*exp(i*2*pi*(k-1)*(n-1)/N);
    end
    X1(n)=(X/N); % appending the calculated value for each X[n]
end


X1
[theta,radius]=cart2pol(real(X1),imag(X1));
n=0:(N-1);
figure(3)
stem(n,theta)
title("output in time domain")
ylabel("magnitude")


