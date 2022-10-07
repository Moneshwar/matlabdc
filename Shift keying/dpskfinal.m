clc;
clear all; 
x=input('message');
subplot(4,1,1);
stem(x);
title('message');
l=length(x);
f=input('frequency');
n=1;
t=n:0.01:n+1;
c=sin(2*pi*f*t);
subplot(4,1,2);
plot(t,c);
title('carrier');
ref_bit=1;
for n=1:l
    t=n:0.001:n+1;
    dk1=ref_bit;
    if(x(n)==dk1)
        dk=1;
        hold on;
        subplot(4,1,3);
        stem(n,dk);
    else
        dk=0;
        hold on;
        subplot(4,1,3);
        stem(n,dk);
  
    end
    
    title('dpsk seq');
    if(dk==1)
        y=sin(2*pi*f*t);
        hold on;
        subplot(4,1,4);
        plot(t,y);
    else
        y=-sin(2*pi*f*t);
        hold on;
        subplot(4,1,4);
        plot(t,y);
    end
    ref_bit=dk;
end
xlabel('AMPLITUDE');
title('DPSK');
