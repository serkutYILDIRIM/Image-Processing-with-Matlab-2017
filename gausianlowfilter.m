
img= imread('cameraman.tif');
r=3;
F = fftshift(fft2(img));
mask = fspecial('gaussian',[3 3], r);
M = fft2(mask, size(F,1), size(F,2));
Filtered = M.*F;
nImg = real(ifft2(ifftshift(Filtered)));

plot (nImg);
figure,imshow(nImg);