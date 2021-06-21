f = imread('peppers.png');
im = rgb2gray(f);

level = graythresh(im);


a = im2bw(im , level);
subplot (2,1,1);
imshow(f);
subplot(2,1,2);
imshow(a);