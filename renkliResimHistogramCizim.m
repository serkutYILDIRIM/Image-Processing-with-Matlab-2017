img= imread('peppers.png');
figure,imshow(img);
title('Orginal Image');
sayac=zeros(256,1);% 256 l�k dizimiz 0-255 de�e�er oldu�u i�insayac�m�z alttan de�eri okuduk�a buray� 1 art�r�yoruz
sayac2=zeros(256,1);
sayac3=zeros(256,1);
x=(0:1:255);%histogram�m�z�n x koordinat ekseni o dan ba�la 1 art�rarak 255e git
for i=1:size(img,1) %resmimizin sat�r say�s�n�
    for j=1:size(img,2)%s�tun say�s�
        for k=1:size(img,3)
        value=img(i,j,k);%resmimizi de�erimize at�yoruz
        sayac(value+1)=sayac(value+1)+1;%sonra sayac dizimizin de�erimni 1 art�r
        sayac2(value+1)=sayac2(value+1)+1;
        sayac3(value+1)=sayac3(value+1)+1;
        end
    end
end
figure
bar(x,sayac);%plot yerine bar kulland�k.plot de�erleri birle�tiriyor.Bar y�kseklik kazand�r�yor
figure
bar(x,sayac2);
figure
bar(x,sayac3);
axis([0 256 0 30000])%pixel say�m�z� bilmedi�imden 30bin yazd�k.Buray� elle giriyoruz
