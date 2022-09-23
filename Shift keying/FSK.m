x=input('input:');
f1=input('enter the 1st carrier frequency:');
f2=input('enter the 2nd carrier frequency:');
z=length(x)
subplot(3,3,1);
stem(x);
t=1:0.001:z
c1=sin(2*pi*f1*t);
c2=sin(2*pi*f2*t);
subplot(3,3,2);
plot(t,c1);
subplot(3,3,3);
plot(t,c2);
for n=1:z
    t=:0.01:n+1;
    if x(n)==1
        y=sin(2*pi*f1*t);
        hold on;
        subplot(3,3,4);
        plot(t,y);
    elseif x(n)==0
        y=sin(2*pi*f2*t);
        hold on;
        subplot(3,3,4);
        plot(t,y);
    end
end

   
   

