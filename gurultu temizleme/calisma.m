S = 30;
b = imread('Pears.png');
img=rgb2gray(b);
[satir , sutun] = size(img);
subplot(2,2,1),imshow(img),title('orjinal resim');
J = double(img) + S.*randn(size(img));
noise=S.*randn(size(img));

subplot(2,2,2),imshow(J./255),title('Gaussian Noise');
subplot(2,2,3),imshow(noise),title('g�r�lt�');



H = zeros(satir,sutun);
for i=1:satir
    for j=1:sutun
        H(i,j) = img(i,j) / (img(i,j) + noise(i,j));
    end
end
%imshow(H,[]);

%Form�l
I = ifft2(H .* fft2(img));

subplot(2,2,4),imshow(I,[]),title('wiener sonucu');