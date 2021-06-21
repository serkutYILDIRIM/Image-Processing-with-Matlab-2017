J = imread('cameraman.tif');
%J = rgb2gray(I);
figure(1),imshow(J),title('Orjinal Resim');
p3=0.05 %default
b = J;
x = rand(size(b));
d = find(x < p3/2);
b(d) = 0; % Minimum value
d = find(x >= p3/2 & x < p3);
b(d) = 1; % Maximum (saturated) value
figure(2),imshow(b),title('Biber');