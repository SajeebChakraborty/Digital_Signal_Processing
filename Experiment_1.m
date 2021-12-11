N=input('Enter the input N ');

x=ones(1,N);
n=0:1:N-1;
subplot(3,2,1);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('Unit Step Sequence');

x2=0.8.^(n);
subplot(3,2,2);
stem(n,x2);
xlabel('n');
ylabel('x(n)');
title('Exponential Sequence');

K=input('Enter the length of K ');
t=0:K;
subplot(3,2,3);
stem(t,t);
xlabel('n');
ylabel('x(n)');
title('Unit Ramp Sequence');

t=0:0.01:pi;
y=sin(2*pi*t);
subplot(3,2,4);
plot(t,y);
ylabel('Amplitude');
xlabel('e');
title('Sinusoidal Sequence');

t=0:0.01:pi;
y=cos(2*pi*t);
subplot(3,2,5);
plot(t,y);
ylabel('Amplitude');
xlabel('f');
title('Cosine Sequence');

