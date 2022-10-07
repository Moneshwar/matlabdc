clc;
clear all;
close all;
x=input('enter the data for comstellation: ');
a=length(x);
j=1;
while j < a+1
    if x(j)==1
        y=-(exp(1i*pi));
    elseif(x(j)==0)
        y=exp(1i*pi);
    end
    plot(y,'*');
    hold on;
    grid on;
    axis([-2,2,-2,2]);
    j=j+1;
end
title('BPSK CONSTELLATION');