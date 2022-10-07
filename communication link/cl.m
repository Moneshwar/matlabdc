clc;
clear all;
Fc=input('enter carrier freq');
Fs=input('enter sampling freq');
t=[0:1/Fs:0.01];
f1=input('enter input freq');
am=input('enter amplitude of message');
s=am*sin(2*pi*f1*t);
y1=ammod(s,Fc,Fs); 
out=awgn(y1,10);%noise
y2=(y1+out);
s1=amdemod(y2,Fc,Fs,0.5);
lpf=lowpass(s1,628,Fs);
subplot(6,1,1);
plot(t,s);
subplot(6,1,3);
plot(t,y1);
subplot(6,1,4);
plot(t,y2);
subplot(6,1,5);
plot(t,s1);
subplot(6,1,6);
plot(t,lpf);