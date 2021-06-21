a=(imread('C:\Users\Serkut\Desktop\matlabr2.png'));
%f=imread('cameraman.tif');
f=rgb2gray(a);
figure(1),imshow(f,[]),title('orjinal');


r=size(f,1);
c=size(f,2);
N=size(r,c);
n=.2;

b=(ones(3)*0.9);
F=fft2(f);
B=fft2(b,N,N);
G=F.*B;
g=ifft2(G)+10*randn(N,N);
G=fft2(g);
figure(2),imshow(abs(ifft2(G)),[]),title('2.asama');

BF=find(abs(B)<n);
% B(BF)=max(max(B))/1.5;
B(BF)=n;
H=ones(N,N)./B;
I=G.*H;
im=abs(ifft2(I));
figure(3),imshow(im,[]),title('3.asama');
masks = (ones(3)*100);

iss = conv2(im,masks);
figure(4),imshow(iss,[]);title('son hali');