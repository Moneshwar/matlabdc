clc;
clear all;
x=input('enter the data');
l=length(x);
a=1;
for a=1:l
    if(x(a)==000)
        y=exp(i*(pi/8));
    else if(x(a)==001)
            y=exp(i*(3*pi/8));
        else if(x(a)==010)
                y=exp(i*(5*pi/8));
            else if(x(a)==011)
                    y=exp(i*(7*pi/8));
                else if(x(a)==100)
                        y=exp(i*(9*pi/8));
                    else if(x(a)==101)
                            y=exp(i*(11*pi/8));
                        else if(x(a)==110)
                                y=exp(i*(13*pi/8));
                            else (x(a)==111)
                                y=exp(i*(15*pi/8));
                            end
                        end
                    end
                end
            end
        end
    end
    disp(y);
    plot(y,'*');
    a=a+1;
    hold on;
    grid on;
    axis([-2 2 -2 2]);
end




