%Resmi büyültme
clear all;
%üzerinde deðiþiklik yapacaðýmýz resim
resim=imread('cameraman.tif');
%Matrisimizi koordinat sisteminde kullanmak için oraya atýyoruz
[s1,s2]=size(resim);
%Matris satýr ve sutunlarýnýistediðimiz ölcülerde büyültüyoruz ve for
%döngüsüyle bunu tüm matrise uyguluyoruz
A=[1*2 0 0;0 1*3 0; 0 0 1];
for i=1:s1
    for j=1:s2
%yukarýda belirttiðimiz kordinatlarý matris sistemine göre for döngüsü içerisine yerleþtiririz
        temp=A*[i;j;1];
        x_kor=round(temp(1));
        y_kor=round(temp(2));
        if x_kor==0
            x_kor=1;
        end
        if y_kor==0
            y_kor=1;
        end
%büyültülmüþ matrisimizi elde ettik
        b(x_kor,y_kor)=resim(i,j);
    end
end
%aradaki farký görmek için orjinal resmi ve küçültülmüþ resimi gösteririz
imshow(resim);title('orjinal');%orjinal
figure;
imshow(b);title('büyültülmüþ');%büyültüðümüz