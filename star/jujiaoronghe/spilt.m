function [A,BSV] = spilt(img)
A = cell(8,8);
BSV = cell(8,8);
I = imread(img);
rs = size(I,1);cs = size(I,2);  %rs：表示图像的行；cs：图像的列
sz = 64;                        %按64个像素进行分块，可自行设置
numr = rs/sz;                   %图像分块的行
numc = cs/sz;                 %图像分快的列
ch = sz; cw = sz;
t1 = (0:numr-1)*ch + 1; t2 = (1:numr)*ch;    %分别求得每一块图像的起始行的像素值
t3 = (0:numc-1)*cw + 1; t4 = (1:numc)*cw;      %分别求得每一块图像的起始列的像素值
 
%figure;
k=0;        %开始分块
for i =1 : numr
for j = 1 : numc
temp = I(t1(i):t2(i),t3(j):t4(j),:);%暂存分块图像为temp
k = k + 1;
 
%subplot(numr,numc,k);%显示分块图像
%imshow(temp);
   A{i,j} = temp;%将分块存储到细胞数组A中
   BSV{i,j} = spatial_frequencies(A{i,j});%将每一块的SF值也存储到BSV细胞数组中，方便后续的清晰度值比较
pause(0.5);
end
end