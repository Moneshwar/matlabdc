clc;
x=input('Enter the binary:');
subplot(6,1,1);
stem(x);
title('Binary Input');
a=length(x);
f1=input('Enter the Frequency f1');
f2=input('Enter the Frequency f2');
t=0:0.01:n+1;
c1=sin(2*pi*f1*t);
subplot(6,1,2);
plot(t,c1);
title('carrier with F1');
c2=sin(2*pi*f2*t);
subplot(6,1,3);
plot(t,c2);
title('carrier with F2');
for n=1:a
    t=n:0.01:n+1;
    if x(n)==1
        y=sin(2*pi*f1*t);
        subplot(6,1,4);
        plot(t,y);
        hold on;
        subplot(6,1,5);
        plot(t,y);
        hold on;
        subplot(6,1,6);
        plot(t,y);
        hold on;
        
    else
        y=sin(0);
        subplot(6,1,4);
        plot(t,y);
        hold on;
        title('Ask');
        y=sin(2*pi*f2*t);
        subplot(6,1,5);
        plot(t,y);
         hold on;
        title('Fsk');
        y=-1*sin(2*pi*f1*t);
        subplot(6,1,6);
        plot(t,y);
         hold on;
    end
end
title('Psk');