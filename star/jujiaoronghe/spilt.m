function [A,BSV] = spilt(img)
A = cell(8,8);
BSV = cell(8,8);
I = imread(img);
rs = size(I,1);cs = size(I,2);  %rs����ʾͼ����У�cs��ͼ�����
sz = 64;                        %��64�����ؽ��зֿ飬����������
numr = rs/sz;                   %ͼ��ֿ����
numc = cs/sz;                 %ͼ��ֿ����
ch = sz; cw = sz;
t1 = (0:numr-1)*ch + 1; t2 = (1:numr)*ch;    %�ֱ����ÿһ��ͼ�����ʼ�е�����ֵ
t3 = (0:numc-1)*cw + 1; t4 = (1:numc)*cw;      %�ֱ����ÿһ��ͼ�����ʼ�е�����ֵ
 
%figure;
k=0;        %��ʼ�ֿ�
for i =1 : numr
for j = 1 : numc
temp = I(t1(i):t2(i),t3(j):t4(j),:);%�ݴ�ֿ�ͼ��Ϊtemp
k = k + 1;
 
%subplot(numr,numc,k);%��ʾ�ֿ�ͼ��
%imshow(temp);
   A{i,j} = temp;%���ֿ�洢��ϸ������A��
   BSV{i,j} = spatial_frequencies(A{i,j});%��ÿһ���SFֵҲ�洢��BSVϸ�������У����������������ֵ�Ƚ�
pause(0.5);
end
end