a=input('Enter the amplitude ');
f=input('Enter the frequency ');
fs=input('Enter the sampling frequency ');

t=0:0.01:2;
y=a*sin(2*pi*f*t);

subplot(2,2,1);
plot(t,y);
xlabel('time');
ylabel('amplitude');
title('Continuous Signal');

n=0:1/fs:2;
y=a*sin(2*pi*f*n/fs);

subplot(2,2,2);
stem(n,y);

xlabel('time');
ylabel('frequency');
title('Discrete Signal');