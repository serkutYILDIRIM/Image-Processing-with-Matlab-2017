close all;
clear all;
im1 = imread('C:\Users\Serkut\Desktop\1.jpg');%referans resmimiz im1 = imread('C:\Users\Serkut\Desktop\1.jpg')
im2 = imread('C:\Users\Serkut\Desktop\3.png')%d�zeltilecek resim
%im2 = imread('peppers.png');


rng(123); %// tekrarlamak i�in matrisimizi ayarl�yoruz
num_colours = 2000;
ind = randperm(numel(im1) / size(im1,3), num_colours);

%// Orijinal g�r�nt�deki renkleri yakal�youruz
red_out = im1(:,:,1);
green_out = im1(:,:,2);
blue_out = im1(:,:,3);

%// Bozuk g�r�nt�deki renkleri yakal�yoruz
red_in = im2(:,:,1);
green_in = im2(:,:,2);
blue_in = im2(:,:,3);

%// 3 x N lik matris olu�tur
X = double([red_in(ind); green_in(ind); blue_in(ind)]);
Y = double([red_out(ind); green_out(ind); blue_out(ind)]);

%// A katsay�m�z� bulal�m
A = Y*(X.')/(X*X.');

%// hassasiyet i�in 2. resimi tan�mlad�k
im2_double = double(im2);

%// MAtris �arp�m� yapt�k 
cikti = cast(reshape((A*reshape(permute(im2_double, [3 1 2]), 3, [])).', ...
          [size(im2_double,1) size(im2_double,2), 3]), class(im2));
      imshow(cikti);title('Son resim');