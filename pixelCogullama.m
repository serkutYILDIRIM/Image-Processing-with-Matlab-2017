im=imread('cameraman.tif');
[w,h,k]=size(im);%3 boyutlu matrisimiz renk olan bo�ta k renk i�in
for i=1:(w-1)%sat�r
for j=1:(h-1)%sutun
cikis(((2*i)-1),((2*j)-1))=im(i,j);%sat�r ve s�tunu belirtilen olcude pixlei alarak cogalt�yoruz
cikis((2*i),((2*j)-1))=im(i,j);%sonra tekrardan i ninci sat�r j ninci s�tuna yaz�yoruz
cikis(((2*i)-1),(2*j))=im(i,j);%ayn� i�lem
cikis((2*i),(2*j))=im(i,j);%ayn� i�lem
end
end
k=1;
for i=1:2:(w-2)%sat�r�n 2 eksigi kadar bir alana yeni pixellerimizi dag�t�yoruz
t=1;%k ve t 0 dan b�y�k ve int olmal�d�r ��nk� matrisin i�inde geziyoruz
for j=1:2:(h-2)%ayn� i�lemi s�tun i�in yap�yoruz
ca=im(i,j)*0.25;%resmimizin matrisinin sat�r ve s�tunlar�na yeni pixelleri eklemek i�in geni�letiyoruz
cb=im(i,(j+1))*0.25;
cc=im((i+1),j)*0.25;
cd=im((i+2),(j+1))*0.25;
g=(ca+cb+cc+cd);% olu�an yeni resim
cikisa(k,t)=g;%en son hali b�y�lt�lm�� hali
t=t+1;
end
k=k+1;
end
figure,imshow(cikisa);title('eski resim');
%figure,imshow(cikis);title('�ogullanm�� resim');
subplot(1,2,1),subimage(cikis);
subplot(1,2,2),subimage(cikisa); 