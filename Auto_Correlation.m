x=input('Enter the input sequence');

n1=length(x);
subplot(2,2,1);
stem(x);

for k=1:n1
    m(k)=x(n1-k+1);
end


subplot(2,2,2);
stem(m);

X=[x,zeros(1,n1)];
H=[m,zeros(1,n1)];

for i=1:n1+n1-1
    y(i)=0;
    for j=1:n1
    if(i-j+1 > 0)
        y(i)=y(i)+X(j)*H(i-j+1);
    end
    end
    
end
subplot(2,2,3);
stem(y);
 