c = imread ('cameraman.tif');% imajýmýzý aldýk
cd = double(c);%Double fonksiyonu ile kullandýðýmýzda resmimiz 0-1 aralýðýnda görünüyor
figure,imshow(cd);% Ýmajýmýz beyaz renk görünecek çünkü 4 tipte double gösterdim ve 1-0 deðerlerini bekliyorum
impixelinfo;
figure,imshow(c);
impixelinfo;
cd(20,20);
c0=mod(cd,2);
c01=mod(c,2);
figure,imshow(c01);

c1=mod(floor(cd/2),2);% bu deðerleri bit kaydýrmak için kullanýyoruz 1 pixel için hesaplayýp
c2=mod(floor(cd/4),2);%hepsine modunu alarak uyguluyoruz
c3=mod(floor(cd/8),2);
c4=mod(floor(cd/16),2);
c5=mod(floor(cd/32),2);
c6=mod(floor(cd/64),2);
c7=mod(floor(cd/128),2);

figure,imshow(c0);%burdada deðerleri gösteriyoruz
figure,imshow(c1);
figure,imshow(c2);
figure,imshow(c3);
figure,imshow(c4);
figure,imshow(c5);
figure,imshow(c6);
figure,imshow(c7);%en anlamlý bitimiz son bit max deðerler var