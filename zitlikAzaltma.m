A=imread('peppers.png');
imshow(A);
for i=1:size(A,1)
    for j=1:size(A,2)
        new(i,j,1)=A(i,j,1)/2;
        new(i,j,2)=A(i,j,2)/2;
        new(i,j,3)=A(i,j,3)/2;
    end 
end
figure,imshow(new);