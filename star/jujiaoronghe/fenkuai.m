clc,clear;
[A,BSVa] = spilt('clock1.png',8,8);
[B,BSVb] = spilt('clock2.png',8,8);
for i =1:8
    for j = 1:8
        if BSVa{i,j} > BSVb{i,j} %�Ƚ�Ai��Bi�Ŀ�������ȣ�
            F{i,j} = A{i,j};     %�������ȱȽϸߵĿ�ŵ��ںϿ��С�
        elseif BSVa{i,j} < BSVb{i,j}
            F{i,j} = B{i,j};
        else
            F{i,j} = (A{i,j} + B{i,j})/2;
        end
    end
end
 
F = cell2mat(F);   %��ϸ������F���»�ԭ�ɾ��󣨼�ͼ��
subplot(131);imshow('clock1.jpg');
subplot(132);imshow('clock2.jpg');
subplot(133);imshow(F);