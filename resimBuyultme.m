%Resmi b�y�ltme
clear all;
%�zerinde de�i�iklik yapaca��m�z resim
resim=imread('cameraman.tif');
%Matrisimizi koordinat sisteminde kullanmak i�in oraya at�yoruz
[s1,s2]=size(resim);
%Matris sat�r ve sutunlar�n�istedi�imiz �lc�lerde b�y�lt�yoruz ve for
%d�ng�s�yle bunu t�m matrise uyguluyoruz
A=[1*2 0 0;0 1*3 0; 0 0 1];
for i=1:s1
    for j=1:s2
%yukar�da belirtti�imiz kordinatlar� matris sistemine g�re for d�ng�s� i�erisine yerle�tiririz
        temp=A*[i;j;1];
        x_kor=round(temp(1));
        y_kor=round(temp(2));
        if x_kor==0
            x_kor=1;
        end
        if y_kor==0
            y_kor=1;
        end
%b�y�lt�lm�� matrisimizi elde ettik
        b(x_kor,y_kor)=resim(i,j);
    end
end
%aradaki fark� g�rmek i�in orjinal resmi ve k���lt�lm�� resimi g�steririz
imshow(resim);title('orjinal');%orjinal
figure;
imshow(b);title('b�y�lt�lm��');%b�y�lt���m�z