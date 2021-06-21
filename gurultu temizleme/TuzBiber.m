J = imread('cameraman.tif');
%J = rgb2gray(I);
subplot(1, 2, 1);imshow(J),title('Orjinal Resim');
p3=0.05 %default
b = J;
x = rand(size(b));
d = find(x < p3/2);
b(d) = 0; % Minimum value
d = find(x >= p3/2 & x < p3);
b(d) = 1; % Maximum (saturated) value

[rows cols] = size(b);
totalPixels = int32(rows * cols);

percentage = str2double(cell2mat(inputdlg('Enter the percent noise: ', 'Enter answer', 1, {'2'}))) / 100.;
numberOfNoisePixels = int32(percentage * double(rows) * double(cols));
locations = randi(totalPixels, [numberOfNoisePixels, 1]);
noisyImage = b;
noisyImage(locations) = 255;
subplot(1, 2, 2);imshow(noisyImage, []);title('tuz ve biber');