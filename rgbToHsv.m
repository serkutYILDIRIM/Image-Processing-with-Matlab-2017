%A=imread();
A=imread('peppers.png');
figure,imshow(A);title('RGB Image');

%RGB imaj�n� [0 1] aral���nda g�sterir
I=double(A)/255;

R=I(:,:,1);%red
G=I(:,:,2);%green
B=I(:,:,3);%blue

%Renk
numi=1/2*((R-G)+(R-B));
denom=((R-G).^2+((R-B).*(G-B))).^0.5;

%0 ile b�l�nmesini engellemek i�in 0 dan b�y�k bir say� ekledik
H=acosd(numi./(denom+0.000001));

%IB>G sonra H= 360-Theta form�l�nden
H(B>G)=360-H(B>G);

%[0 1] aral���nda normalle�tir
H=H/360;

%Doygunluk
S=1- (3./(sum(I,3)+0.000001)).*min(I,[],3);


%Yo�unluk
I=sum(I,3)./3;


%HSI d�n���m her sat�ra uyguluyoruz
HSI=zeros(size(A));
HSI(:,:,1)=H;
HSI(:,:,2)=S;
HSI(:,:,3)=I;



figure,imshow(HSI);title('HSI Image');