I=imread('rice.png');
imhist(I);
BW = im2bw(im,level);

subplot(2,1,1);
imshow(I);
subplot(2,1,2);
imshow(BW);