x=input('Enter the input sequence');
h=input('Enter the impulse sequence');

n1=length(x);
n2=length(h);

subplot(2,2,1);
stem(x);

for k=1:n1
    m(k)=h(n1-k+1);
end


subplot(2,2,2);
stem(m);

X=[x,zeros(1,n2)];
H=[m,zeros(1,n1)];

for i=1:n1+n2-1
    y(i)=0;
    for j=1:n1
    if(i-j+1 > 0)
        y(i)=y(i)+X(j)*H(i-j+1);
    end
    end
    
end
subplot(2,2,3);
stem(y);
 