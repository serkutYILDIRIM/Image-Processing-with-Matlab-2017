img= imread('peppers.png');
figure,imshow(img);
title('Orginal Image');
sayac=zeros(256,1);% 256 lýk dizimiz 0-255 deðeðer olduðu içinsayacýmýz alttan deðeri okudukça burayý 1 artýrýyoruz
sayac2=zeros(256,1);
sayac3=zeros(256,1);
x=(0:1:255);%histogramýmýzýn x koordinat ekseni o dan baþla 1 artýrarak 255e git
for i=1:size(img,1) %resmimizin satýr sayýsýný
    for j=1:size(img,2)%sütun sayýsý
        for k=1:size(img,3)
        value=img(i,j,k);%resmimizi deðerimize atýyoruz
        sayac(value+1)=sayac(value+1)+1;%sonra sayac dizimizin deðerimni 1 artýr
        sayac2(value+1)=sayac2(value+1)+1;
        sayac3(value+1)=sayac3(value+1)+1;
        end
    end
end
figure
bar(x,sayac);%plot yerine bar kullandýk.plot deðerleri birleþtiriyor.Bar yükseklik kazandýrýyor
figure
bar(x,sayac2);
figure
bar(x,sayac3);
axis([0 256 0 30000])%pixel sayýmýzý bilmediðimden 30bin yazdýk.Burayý elle giriyoruz
