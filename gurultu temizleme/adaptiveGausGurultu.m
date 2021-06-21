S = 55;
b = imread('C:\Users\Serkut\Desktop\MatlabResim.png');
a=rgb2gray(b);
J = double(a) + S.*randn(size(a));
figure;subplot(121)
imshow(a)
title('Original Image')
subplot(122)
imshow(J./255)
title('Additive Gaussian Noise')