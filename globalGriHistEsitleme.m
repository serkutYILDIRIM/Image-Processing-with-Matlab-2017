a=imread('cameraman.tif');
figure,imshow(a);title('Orjinal resim');
r=size(a,1);%sat�r no
c=size(a,2);%s�tun no
ah=uint8(zeros(r,c));%son deger unsigned intiger kulland�k uint8 sat�r ve sutun koyduk i�ine
n=r*c;%toplam pixel say�m�z n sat�r *sutun
f=zeros(256,1);%s�kl�k degerimiz. 256 renk var 1. sat�r i�in yapt�k gri resimde
pdf=zeros(256,1);%olas�l�k yo�unluk fonksiyonu
cdf=zeros(256,1);%ag�rl�k you�unluk fonksiyonu k�m�latif %t�m s�tunlar i�in yaz�yoruz
cum=zeros(256,1);%ara sonuclar�m� cum out
out=zeros(256,1);
for i=1:r%iterasyonumuzu yap�yoruz
    for j=1:c%sat�r s�tun i�in iterasyon yap�yoruz
        value = a(i,j);%valuemiz yo�unluk deperini ifade ediyor belirli pixleleri al�yoruz
        f(value+1)=f(value+1)+1;%indexlere g�re ilk degerimiz f,yogunlugumuz 0
        pdf(value+1)=f(value+1)/n;%burayada �nceki yogunluk de�erini ekledik ve �imdi pdf de�erini hesaplayabiliriz
    end%pixel saym�za (n) b�ld�k
end
sum=0; L=255;%sum akumulat�f toplam i�in L �arpmak istedi�im yogunluk de�eri
for i=1:size(pdf)%sonra tekrar sat�r ve sutun i�in iter matrislerimizi yapt�k
    sum= sum +f(i);%burda t�m sayac yani frekans degerlerimizin toplam�n� ald�k
    cum(i)=sum;% ve sonra sum de�erini ara de�erimize atad�k
    cdf(i)=cum(i)/n;%daha sonrada pixel say�s�na b�l�p cdf e atad�k
    out(i)=round(cdf(i)*L);%son c�k���m�za yuvarlanm�� de�erimizi atad�k
end%yogunluk degeri 0-256 ollan resmimizi ah de�i�kenimize at�yoruz
for i=1:r
    for j=1:c
        ah(i,j)=out(a(i,j)+1);
    end
end
figure,imshow(ah);title('bizim fonksiyon');
he=histeq(a);
figure,imshow(he);title('matlab fonksiyon');
    