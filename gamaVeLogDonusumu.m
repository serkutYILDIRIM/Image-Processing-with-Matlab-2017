img = imread ('cameraman.tif');
[rows cols]=size(img);

%log dönüþümü
for x=1:rows
    for y=1:cols
        
        m=double(img(x,y));
        z(x,y)=0.06.*log(1+m);
    end
end

for w=1:rows
    for q=1:cols
        
        m=double(img(w,q));
        zz(w,q)=0.06 .* m.^0.6;
    end
end

figure,
subplot(1,3,1);imshow(img);title('ilk resim');
subplot(1,3,2);imshow(z);title('Gama Resimi');
subplot(1,3,3);imshow(zz);title('contrast');

