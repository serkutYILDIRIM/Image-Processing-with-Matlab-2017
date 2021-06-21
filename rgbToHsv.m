%A=imread();
A=imread('peppers.png');
figure,imshow(A);title('RGB Image');

%RGB imajýný [0 1] aralýðýnda gösterir
I=double(A)/255;

R=I(:,:,1);%red
G=I(:,:,2);%green
B=I(:,:,3);%blue

%Renk
numi=1/2*((R-G)+(R-B));
denom=((R-G).^2+((R-B).*(G-B))).^0.5;

%0 ile bölünmesini engellemek için 0 dan büyük bir sayý ekledik
H=acosd(numi./(denom+0.000001));

%IB>G sonra H= 360-Theta formülünden
H(B>G)=360-H(B>G);

%[0 1] aralýðýnda normalleþtir
H=H/360;

%Doygunluk
S=1- (3./(sum(I,3)+0.000001)).*min(I,[],3);


%Yoðunluk
I=sum(I,3)./3;


%HSI dönüþüm her satýra uyguluyoruz
HSI=zeros(size(A));
HSI(:,:,1)=H;
HSI(:,:,2)=S;
HSI(:,:,3)=I;



figure,imshow(HSI);title('HSI Image');