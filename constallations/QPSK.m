clc;
clear all;
x=input('enter the data for comstellation: ');
a=length(x);
j=1;
while (j<(a+1))
    if(x(j)==00)
        y=exp(1i*0.25*pi);
    elseif(x(j)==01)
        y=exp(1i*0.75*pi);
    elseif (x(j)==10)
        y=exp(1i*-0.75*pi);
    else
        y=exp(1i*-0.25*pi);         
    end
    plot(y,'*');
    hold on;
    grid on;
    axis([-2,2,-2,2]);
    j=j+1;
end
title('QPSK CONSTELLATION');