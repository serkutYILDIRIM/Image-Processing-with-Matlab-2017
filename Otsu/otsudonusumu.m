I = imread('peppers.png');
level = graythresh(I);
BW = im2bw(I,level);


subplot(2,1,1);
imshow(I);
subplot(2,1,2);
imshow(BW);
