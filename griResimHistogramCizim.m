img= imread('cameraman.tif');
figure,imshow(img);
title('Orginal Image');
sayac=zeros(256,1);% 256 lýk dizimiz 0-255 deðeðer olduðu içinsayacýmýz alttan deðeri okudukça burayý 1 artýrýyoruz
x=(0:1:255);%histogramýmýzýn x koordinat ekseni o dan baþla 1 artýrarak 255e git
for i=1:size(img,1) %resmimizin satýr sayýsýný
    for j=1:size(img,2)%sütun sayýsý
        value=img(i,j);%resmimizi deðerimize atýyoruz
        sayac(value+1)=sayac(value+1)+1;%sonra sayac dizimizin deðerimni 1 artýr
    end
end
figure
bar(x,sayac);%plot yerine bar kullandýk.plot deðerleri birleþtiriyor.Bar yükseklik kazandýrýyor
%axis([0 256 0 1000])%pixel sayýmýzý bilmediðimden 30bin yazdýk.Burayý elle giriyoruz