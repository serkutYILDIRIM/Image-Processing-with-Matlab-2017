

i=imread('cameraman.tif');
af=fftshift(fft2(i));
figure,imshow(af);
fftshow(af);
[x,y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2);%maskeyi hazýrladýk
c=z<15;
af1=af.*c;%maskeyi ortaya yerleþtirdik
fftshow(af1);
af1i=ifft2(af1);
ifftshow(af1i);