image=imread('cameraman.tif');
I = double(image);
varyans=1000;

go=geomean(I);

ao= mean(I);

aritmetik = imfilter(I,go, [7 7]);
figure,imshow(aritmetik);title('aritmetik');


geometrik = imfilter(I,ao,[7 7]);
figure,imshow(geometrik);title('geometrik');


ad= medfilt2(I, [7 7]);
figure,imshow(ad);title('adaptif');



h=fspecial('average', [7 7]);
g= imfilter(I, go);
imshow(g);