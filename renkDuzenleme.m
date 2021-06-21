close all;
clear all;
im1 = imread('C:\Users\Serkut\Desktop\1.jpg');%referans resmimiz im1 = imread('C:\Users\Serkut\Desktop\1.jpg')
im2 = imread('C:\Users\Serkut\Desktop\3.png')%düzeltilecek resim
%im2 = imread('peppers.png');


rng(123); %// tekrarlamak için matrisimizi ayarlýyoruz
num_colours = 2000;
ind = randperm(numel(im1) / size(im1,3), num_colours);

%// Orijinal görüntüdeki renkleri yakalýyouruz
red_out = im1(:,:,1);
green_out = im1(:,:,2);
blue_out = im1(:,:,3);

%// Bozuk görüntüdeki renkleri yakalýyoruz
red_in = im2(:,:,1);
green_in = im2(:,:,2);
blue_in = im2(:,:,3);

%// 3 x N lik matris oluþtur
X = double([red_in(ind); green_in(ind); blue_in(ind)]);
Y = double([red_out(ind); green_out(ind); blue_out(ind)]);

%// A katsayýmýzý bulalým
A = Y*(X.')/(X*X.');

%// hassasiyet için 2. resimi tanýmladýk
im2_double = double(im2);

%// MAtris çarpýmý yaptýk 
cikti = cast(reshape((A*reshape(permute(im2_double, [3 1 2]), 3, [])).', ...
          [size(im2_double,1) size(im2_double,2), 3]), class(im2));
      imshow(cikti);title('Son resim');