clc;
clear all;
close all;
x=input('enter input value');
f=input('enter input frequency');
a=length(x);
subplot(2,2,1);
z=1:a;
stem(z,x);
for i=1:a
    t=i:0.001:i+1;
    if(x(i)==1)
        y=sin(2*pi*f*t);
        hold on;
        subplot(2,1,2)
        plot(t,y);
        
    else
        y=-1*sin((2*pi*f*t));
        hold on;
        subplot(2,1,2);
        plot(t,y);
        
    end
    
end