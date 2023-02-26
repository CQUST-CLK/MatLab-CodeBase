function img_fusion = fusion(img1,img2,height,width)
 
[A,BSVa] = spilt2(img1,height,width);
[B,BSVb] = spilt2(img2,height,width);
for i =1:height
    for j = 1:width
        if BSVa{i,j} > BSVb{i,j} %比较Ai和Bi的块的清晰度，
            F{i,j} = A{i,j};     %将清晰度比较高的块放到融合块中。
        elseif BSVa{i,j} < BSVb{i,j}
            F{i,j} = B{i,j};
        else
            F{i,j} = (A{i,j} + B{i,j})/2;
        end
    end
end
 
F = cell2mat(F);   %将细胞数组F重新还原成矩阵（即图像）
img_fusion = F;
%subplot(131);imshow('clock1.jpg');
%subplot(132);imshow('clock2.jpg');
%subplot(133);imshow(F);
end