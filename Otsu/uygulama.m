I=imread('rice.png');
[m,n]=size(I);
ortalama=mean(I(:));
a=30;
b=15;

while abs(a-ortalama)>b
    G1=[]; G2=[]; deger=0; deger2=0;
    for i=1:m
        for j=1:n
            if  I(i,j)>ortalama
                deger=deger+1;
                G1(deger)=I(i,j);
            else
                deger2=deger2+1;
                G2(deger2)=I(i,j);
            end
        end        
    end  
    a=ortalama;
    m1=mean(G1);
    m2=mean(G2);
    ortalama=(m1+m2)/2;
end

subplot(2,1,1);
imshow(I);
subplot(2,1,2);
 imshow (double(I).*(I>ortalama),[]);
 
