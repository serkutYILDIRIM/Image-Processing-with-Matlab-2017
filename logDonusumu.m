I=imread('peppers.png');
II=im2double(I);

c=255/log10(255+1);
s=c*log10(II+1);
ss=uint8(s);

subplot(1,2,1);
imshow(I);
title('Orjinal resim');

subplot(1,2,2);
imshow(ss);
title('Dönüþüm sonrasý oluþan resim');