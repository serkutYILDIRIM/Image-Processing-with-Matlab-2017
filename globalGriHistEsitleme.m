a=imread('cameraman.tif');
figure,imshow(a);title('Orjinal resim');
r=size(a,1);%satýr no
c=size(a,2);%sütun no
ah=uint8(zeros(r,c));%son deger unsigned intiger kullandýk uint8 satýr ve sutun koyduk içine
n=r*c;%toplam pixel sayýmýz n satýr *sutun
f=zeros(256,1);%sýklýk degerimiz. 256 renk var 1. satýr için yaptýk gri resimde
pdf=zeros(256,1);%olasýlýk yoðunluk fonksiyonu
cdf=zeros(256,1);%agýrlýk youðunluk fonksiyonu kümülatif %tüm sütunlar için yazýyoruz
cum=zeros(256,1);%ara sonuclarýmý cum out
out=zeros(256,1);
for i=1:r%iterasyonumuzu yapýyoruz
    for j=1:c%satýr sütun için iterasyon yapýyoruz
        value = a(i,j);%valuemiz yoðunluk deperini ifade ediyor belirli pixleleri alýyoruz
        f(value+1)=f(value+1)+1;%indexlere göre ilk degerimiz f,yogunlugumuz 0
        pdf(value+1)=f(value+1)/n;%burayada önceki yogunluk deðerini ekledik ve þimdi pdf deðerini hesaplayabiliriz
    end%pixel saymýza (n) böldük
end
sum=0; L=255;%sum akumulatýf toplam için L çarpmak istediðim yogunluk deðeri
for i=1:size(pdf)%sonra tekrar satýr ve sutun için iter matrislerimizi yaptýk
    sum= sum +f(i);%burda tüm sayac yani frekans degerlerimizin toplamýný aldýk
    cum(i)=sum;% ve sonra sum deðerini ara deðerimize atadýk
    cdf(i)=cum(i)/n;%daha sonrada pixel sayýsýna bölüp cdf e atadýk
    out(i)=round(cdf(i)*L);%son cýkýþýmýza yuvarlanmýþ deðerimizi atadýk
end%yogunluk degeri 0-256 ollan resmimizi ah deðiþkenimize atýyoruz
for i=1:r
    for j=1:c
        ah(i,j)=out(a(i,j)+1);
    end
end
figure,imshow(ah);title('bizim fonksiyon');
he=histeq(a);
figure,imshow(he);title('matlab fonksiyon');
    