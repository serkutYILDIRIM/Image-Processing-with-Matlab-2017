sigma = 30;
b = imread('Pears.png');
img=rgb2gray(b);
[satir , sutun] = size(img);


subplot(2,2,1),imshow(img),title('orjinal resim');


gurultulu = double(img) + sigma.*randn(size(img));
noise=gurultulu - double(img);
toplamResim=gurultulu./255;


subplot(2,2,2),imshow(toplamResim),title('Gaussian Noise');
subplot(2,2,3),imshow(noise),title('gürültü');



H = zeros(satir,sutun);
for i=1:satir
    for j=1:sutun
        H(i,j) = img(i,j) / (img(i,j) + noise(i,j));
    end
end
I = ifft2(H .* fft2(img));
subplot(2,2,4),imshow(I,[]),title('wiener sonucu');