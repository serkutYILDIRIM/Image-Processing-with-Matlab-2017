[T,EM] = otsuthresh(counts)
I = imread('coins.png');
[counts,x] = imhist(I,16);
stem(x,counts);
T = otsuthresh(counts);
BW = imbinarize(I,T);
imshow(BW);