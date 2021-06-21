a = imread('cameraman.tif');
an=imnoise(a,'gaussian',0.01);
subplot(1,3,1),imshow(an),title('gürültülü');

sigma=3;
cutoff=ceil(3*sigma);
h=fspecial('gaussian',2*cutoff+1,sigma);
out=conv2(a,h,'same');
subplot(1,3,2),imshow(out/256),title('yumuþak');
w=wiener2(an,[5 5]);
subplot(1,3,3),imshow(out/256),title('winer');