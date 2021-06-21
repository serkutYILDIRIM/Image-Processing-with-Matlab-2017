im=imread('cameraman.tif');
[w,h,k]=size(im);%3 boyutlu matrisimiz renk olan boþta k renk için
for i=1:(w-1)%satýr
for j=1:(h-1)%sutun
cikis(((2*i)-1),((2*j)-1))=im(i,j);%satýr ve sütunu belirtilen olcude pixlei alarak cogaltýyoruz
cikis((2*i),((2*j)-1))=im(i,j);%sonra tekrardan i ninci satýr j ninci sütuna yazýyoruz
cikis(((2*i)-1),(2*j))=im(i,j);%ayný iþlem
cikis((2*i),(2*j))=im(i,j);%ayný iþlem
end
end
k=1;
for i=1:2:(w-2)%satýrýn 2 eksigi kadar bir alana yeni pixellerimizi dagýtýyoruz
t=1;%k ve t 0 dan büyük ve int olmalýdýr çünkü matrisin içinde geziyoruz
for j=1:2:(h-2)%ayný iþlemi sütun için yapýyoruz
ca=im(i,j)*0.25;%resmimizin matrisinin satýr ve sütunlarýna yeni pixelleri eklemek için geniþletiyoruz
cb=im(i,(j+1))*0.25;
cc=im((i+1),j)*0.25;
cd=im((i+2),(j+1))*0.25;
g=(ca+cb+cc+cd);% oluþan yeni resim
cikisa(k,t)=g;%en son hali büyültülmüþ hali
t=t+1;
end
k=k+1;
end
figure,imshow(cikisa);title('eski resim');
%figure,imshow(cikis);title('çogullanmýþ resim');
subplot(1,2,1),subimage(cikis);
subplot(1,2,2),subimage(cikisa); 