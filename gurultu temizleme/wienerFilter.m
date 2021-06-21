clear all; clc; close all;

img = rgb2gray(imread('pears.png'));
% img = im2double(img);
[satir , sutun] = size(img);
subplot(2,2,1),imshow(img),title('orjinal resim');

%gürültüyü elde ettik
noise = zeros(satir,sutun);
noise = imnoise(noise,'gaussian',0.5);

toplam = zeros(satir,sutun);
for i=1:satir
    for j=1:sutun
        toplam(i,j) = img(i,j) + 255*noise(i,j);
    end
end
subplot(2,2,2),imshow(toplam,[]),title('gürültülü resim');
subplot(2,2,3),imshow(noise),title('gürültü');

%H ýn elde edilmesi
H = zeros(satir,sutun);
for i=1:satir
    for j=1:sutun
        H(i,j) = img(i,j) / (img(i,j) + noise(i,j));
    end
end
%imshow(H,[]);

%Formül
I = ifft2(H .* fft2(img));

subplot(2,2,4),imshow(I,[]),title('wiener sonucu');