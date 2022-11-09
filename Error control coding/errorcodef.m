k=input('Enter no of message bits');
n=input('Enter the length of codeword');
c=n-k;
M=dec2bin(0:2^k-1)-'0';
disp('Message signal :');
disp(M);
P=[1 1 1 ;0 1 1 ; 1 1 0 ; 1 0 1];
disp('Parity Matrix :');
disp(P);
I=eye(k);
G=[I ;P];
disp('Generator matrix :')
disp(G);
C=M.*G;
C=mod(C,2);
disp('Codeword :');
disp(C);
out=sum(C,2);
m=size(out,1);
dmin=min(out(2:m));
disp('Dmin')
disp(dmin);
edc=dmin-1;
disp('Error Detecting Capability');
disp(edc);
ecc=(dmin-1)/2;
disp('Error Correcting Capability');
disp(ecc);
if(ecc>1)
    disp('There are two errors and cannot be corrected');
end
e=eye(n);
disp('Error Pattern');
disp(e);
i=eye(c);
H=[P' i];
disp('Parity Matrix');
disp(H);
s=e.*H';
disp('Syndrome Matrix');
disp(s);
r=input('Enter the received codeword');
s1=r*H';
s1=mod(s1,2);
disp('Error Syndrome');
disp(s1);
if(s1==0)
    disp('No error');
else
    j=size(s);
    count=1;
    for i=1:n
        chk = isequal(s1,s(i:i,:));
        if(chk==1)
            break;
        else
            count=count+1;
        end
    end
 e=e(count:count,:);
 for j=1:15
     D(j:j,:)=xor(e,C(j:j,:));
     chk1=isequal(D(j:j,:),r);
     if(chk1==1)
         disp('Error Codeword');
         disp(D(j:j,:));
         disp('Error in position');
         disp(count);
         y=r+e;
         y=mod(y,2);
         disp('Corrected Codeword');
         disp(C(j:j,:));
         disp("Value of Y");
         disp(y);
     end
 end
end

        