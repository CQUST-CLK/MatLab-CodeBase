function img_fusion = fusion(img1,img2,height,width)
 
[A,BSVa] = spilt2(img1,height,width);
[B,BSVb] = spilt2(img2,height,width);
for i =1:height
    for j = 1:width
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
img_fusion = F;
%subplot(131);imshow('clock1.jpg');
%subplot(132);imshow('clock2.jpg');
%subplot(133);imshow(F);
end