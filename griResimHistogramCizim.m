img= imread('cameraman.tif');
figure,imshow(img);
title('Orginal Image');
sayac=zeros(256,1);% 256 l�k dizimiz 0-255 de�e�er oldu�u i�insayac�m�z alttan de�eri okuduk�a buray� 1 art�r�yoruz
x=(0:1:255);%histogram�m�z�n x koordinat ekseni o dan ba�la 1 art�rarak 255e git
for i=1:size(img,1) %resmimizin sat�r say�s�n�
    for j=1:size(img,2)%s�tun say�s�
        value=img(i,j);%resmimizi de�erimize at�yoruz
        sayac(value+1)=sayac(value+1)+1;%sonra sayac dizimizin de�erimni 1 art�r
    end
end
figure
bar(x,sayac);%plot yerine bar kulland�k.plot de�erleri birle�tiriyor.Bar y�kseklik kazand�r�yor
%axis([0 256 0 1000])%pixel say�m�z� bilmedi�imden 30bin yazd�k.Buray� elle giriyoruz