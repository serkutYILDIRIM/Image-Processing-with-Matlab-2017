[x,y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2);
c=z>15;
i=imread('cameraman.tif');
af=fftshift(fft2(i));
hp=af.*c;
fftshow(hp);
hpi=ifft2(hp);
ifftshow(hpi);
c=z>50;%olursa ortadaki yuvarlak büyür

hp=af.*c;
fftshow(hp);
hpi=ifft2(hp);
ifftshow(hpi);