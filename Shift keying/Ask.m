clc;
x=input('Enter the binary:');
stem(x);
subplot(3,1,1);
a=length(x);
disp(a);
n=1;
f1=input('Enter the Frequency');
t=0:0.01:n+1;
c1=sin(2*pi*f1*t);
subplot(3,1,2);
plot(t,c1);
xlabel('TIME PERIOD');
ylabel('AMPLITUDE');
title('carrier');
for n=1:a
    t=n:0.01:n+1;
    if x(n)==1
        y=sin(2*pi*f1*t);
        hold on;
        subplot(3,1,3);
        plot(t,y);
    else
        y=sin(0);
        hold on;
        subplot(3,1,3);
        plot(t,y);
    end
end
xlabel('time period');
ylabel('amplitiude');
title('ask');
