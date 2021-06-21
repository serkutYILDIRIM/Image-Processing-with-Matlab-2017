clc;
close all;
Img = imread('cameraman.tif');
A = imnoise(Img,'Gaussian',0.04,0.003);
figure,imshow(A);
I = double(A);
sigma = 1.76;   %Standard Deviation
sz = 3; %Box size
[x,y]=meshgrid(-sz:sz,-sz:sz);
M = size(x,1)-1;
N = size(y,1)-1;
%Gaussian
Exp_comp = -(x.^2+y.^2)/(2*sigma*sigma);
Kernel= exp(Exp_comp)/(2*pi*sigma*sigma);
 
Output=zeros(size(I));
I = padarray(I,[sz sz]);
 
%Convolution
for i = 1:size(I,1)-M
    for j =1:size(I,2)-N
        Temp = I(i:i+M,j:j+M).*Kernel;
        Output(i,j)=sum(Temp(:));
    end
end
Output = uint8(Output);
figure,imshow(Output);

