image=imread('cameraman.tif');
I = double(image);
varyans=1000;

go=geomean(I);

ao= mean(I);

aritmetik = imfilter(I/1000,go/2);
geometrik = imfilter(I/1000,ao/2);
ad= medfilt2(I, [7 7]);

 subplot(3,3,1);imshow(aritmetik,[]);
    subplot(3,3,2);imshow(geometrik,[]);
    subplot(3,3,3);imshow(ad,[]);