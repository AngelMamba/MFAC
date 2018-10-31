clear all; close all;
L=500;  %���泤��
d=[1 -1.5 0.7 0.1]; c=[1 0.5 0.2];  % ���ӷ�ĸ����ʽϵ��
nd=length(d)-1 ;nc=length(c)-1;   %�״�
xik=zeros(nc,1);  %��������ֵ
ek=zeros(nd,1);
xi=randn(L,1);  %������ֵΪ0������Ϊ1�ĸ�˹����������

for k=1:L
    e(k)=-d(2:nd+1)*ek+c*[xi(k);xik];  %������ɫ����
    %���ݸ���
    for i=nd:-1:2
        ek(i)=ek(i-1);
    end
    ek(1)=e(k);
    for i=nc:-1:2
        xik(i)=xik(i-1);
    end
    xik(1)=xi(k);
end
subplot(2,1,1);
plot(xi);
xlabel('k');ylabel('������ֵ');title('����������');
subplot(2,1,2);
plot(e);
xlabel('k');ylabel('������ֵ');title('��ɫ��������');

%���Թ�����

[y1,f1] = Spectrum_Calc(xi',512);
p1 = 1/L * y1.*conj(y1);

figure(2)
subplot(211)
plot(f1,p1)

[y2,f2] = Spectrum_Calc(e,512);
p2 = 1/L * y2.*conj(y2);
subplot(212)
plot(f2,p2)