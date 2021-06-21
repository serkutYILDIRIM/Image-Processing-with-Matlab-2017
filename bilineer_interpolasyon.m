clc
clear all
close all
a=imread('C:\Users\Serkut\Desktop\ee.jpg');      %resim import ettik

[row col d] = size(a);  %3 boyutlu dizimiz
zoom=3;                 %zoomlama katsayýsý
zr=zoom*row;
zc=zoom*col;
%biliner interpolasyon
for i=1:zr %satýr için
    
    x=i/zoom;
    
    x1=floor(x);% pixellerin koordinatýný hesaplýyoruz
    x2=ceil(x);
    if x1==0
        x1=1;
    end
    xint=rem(x,1);
    for j=1:zc %sütun için
        
        y=j/zoom;
        
        y1=floor(y);% pixellerin koordinatýný hesaplýyoruz
        y2=ceil(y);
        if y1==0
            y1=1;
        end
        yint=rem(y,1);%katsayýlarý elde ettik
        
        BL=a(x1,y1,:);
        TL=a(x1,y2,:);
        BR=a(x2,y1,:);
        TR=a(x2,y2,:);
        
        R1=BR*yint+BL*(1-yint);
        R2=TR*yint+TL*(1-yint);
        
        im_zoom(i,j,:)=R1*xint+R2*(1-xint);%
    end
end
imshow(im_zoom);