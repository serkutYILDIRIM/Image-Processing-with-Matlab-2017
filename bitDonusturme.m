c = imread ('cameraman.tif');% imaj�m�z� ald�k
cd = double(c);%Double fonksiyonu ile kulland���m�zda resmimiz 0-1 aral���nda g�r�n�yor
figure,imshow(cd);% �maj�m�z beyaz renk g�r�necek ��nk� 4 tipte double g�sterdim ve 1-0 de�erlerini bekliyorum
impixelinfo;
figure,imshow(c);
impixelinfo;
cd(20,20);
c0=mod(cd,2);
c01=mod(c,2);
figure,imshow(c01);

c1=mod(floor(cd/2),2);% bu de�erleri bit kayd�rmak i�in kullan�yoruz 1 pixel i�in hesaplay�p
c2=mod(floor(cd/4),2);%hepsine modunu alarak uyguluyoruz
c3=mod(floor(cd/8),2);
c4=mod(floor(cd/16),2);
c5=mod(floor(cd/32),2);
c6=mod(floor(cd/64),2);
c7=mod(floor(cd/128),2);

figure,imshow(c0);%burdada de�erleri g�steriyoruz
figure,imshow(c1);
figure,imshow(c2);
figure,imshow(c3);
figure,imshow(c4);
figure,imshow(c5);
figure,imshow(c6);
figure,imshow(c7);%en anlaml� bitimiz son bit max de�erler var