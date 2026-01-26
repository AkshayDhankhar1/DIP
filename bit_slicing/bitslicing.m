% Name   : Akshay (BT23ECE050)
% Branch : ECE 3rd Year
clc;
clear all;
close all;
I = imread('image_1.jpg');
if size(I,3)==3
    I=rgb2gray(I);
end
[rows, cols]=size(I); %getting the number of rows and columns in the matrix of the image.
figure;
imshow(I);
bit_planes=zeros(rows, cols, 8); %storing the planes of different layers of the photo (here 8 are there)
for k=1:8                  
    power=2^(k-1);
% For each bit
for i=1:rows
for j=1:cols %for each element
            bit_planes(i,j,k)=mod(floor(double(I(i,j))/power), 2); %shifting the element, removing the fraction part and getting the LSB out of it to get the element for the desried layer and pixel.
end
end
end
figure;
for k = 1:8
    subplot(2,4,k)
    imshow(bit_planes(:,:,k),[]) %shows the 2D image according to the bit layer one by  one using allrows and columns at their max and min values
end
