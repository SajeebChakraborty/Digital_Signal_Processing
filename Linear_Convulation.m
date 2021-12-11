x=input('Enter the Signal Sequence');
h=input('Enter the Inpulse Sequence');


n1=length(x);
n2=length(h);

X=[x,zeros(1,n2)];
H=[h,zeros(1,n1)];

subplot(2,2,1);
stem(x);
subplot(2,2,2);
stem(y);

for i=1:n1+n2-1
    y(i)=0;
    for j=1:n1
       
        if(i-j+1 > 0)
            y(i)=y(i)+X(j)*H(i-j+1);
        else
        end
               
    end    
end

subplot(2,2,3);
 stem(y);