clc
clear all
close all
katsayi=3;
im0=imread('C:\Users\Serkut\Desktop\1.jpg');
im=cast(im0,'int16'); 
imshow(cast(im,'uint8'));
[h,v,d]=size(im);

for i=1:h
    for j=1:v
      im1(1+(i-1)*katsayi,1+(j-1)*katsayi,:)=im(i,j,:); 
    end
       imshow(cast(im1,'uint8')); 
end

%bilineer interpolasyon
for i=1:1+(h-2)*katsayi     %satır sayısı
    for j=1:1+(v-2)*katsayi %sutun sayısı
    
       if ((rem(i-1,katsayi)==0) && (rem(j-1,katsayi)==0)) 
       else  
           h00=im1( ceil(i/katsayi)*katsayi-katsayi+1,ceil(j/katsayi)*katsayi-katsayi+1,:); 
           h10=im1( ceil(i/katsayi)*katsayi-katsayi+1+katsayi,ceil(j/katsayi)*katsayi-katsayi+1,:);
           h01=im1( ceil(i/katsayi)*katsayi-katsayi+1,ceil(j/katsayi)*katsayi-katsayi+1+katsayi,:);
           h11=im1( ceil(i/katsayi)*katsayi-katsayi+1+katsayi,ceil(j/katsayi)*katsayi-katsayi+1+katsayi,:);
           
           x=rem(i-1,katsayi); %piksel hesaplama koordinatları.
           y=rem(j-1,katsayi);  
          
           dx=x/katsayi; %hesaplanan pikselin en yakın dört tanınmış piksele lokalize edilmesi.
           dy=y/katsayi;
          
           b1=h00;    %bilineer interpolasyon sabitleri.
           b2=h10-h00;
           b3=h01-h00;
           b4=h00-h10-h01+h11;           
           im1(i,j,:)=b1+b2*dx+b3*dy+b4*dx*dy; %bilineer interpolasyon denklemi.
         end
        end
  imshow(cast(im1,'uint8'));
end
