clear all; close all;
% clc
L=500;  %���泤��
c = [1 -0.5];
nc = length(c) - 1;
xik=zeros(nc,1);  %��������ֵ
xi=randn(L,1);  %������ֵΪ0������Ϊ1�ĸ�˹����������

for k=1:L
    e(k)=c*[xi(k);xik];  %������ɫ����
    %���ݸ���
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