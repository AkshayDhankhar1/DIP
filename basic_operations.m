% Fundamental Operations for Image Processing in MATLAB
% Name   : Akshay (BT23ECE050)
% Branch : ECE 3rd Year
% Aim    : To perform basic image processing operations in MATLAB
% Date   : 14-01-2026
clc;            % Clears command window
clear;          % Clears workspace variables
close all;      % Closes all figure windows
% 1. Generate an 8x8 random matrix (0 to 255)
B = randi([0 255], 8, 8);
display(B);
% 2. Read and display original image
I = imread("display_img.jpeg");   % Make sure image is in same folder
figure;
imshow(I);
title('Original RGB Image');
% 3. Convert RGB image to Grayscale
Ig = rgb2gray(I);
figure;
imshow(Ig);
title('Grayscale Image');
% 4. Extract Red Channel Only
I_red = I;          % Copy original image
I_red(:,:,2) = 0;  % Remove Green channel
I_red(:,:,3) = 0;  % Remove Blue channel
figure;
imshow(I_red);
title('Red Channel Image');
% 5. Convert Grayscale to Black & White using Threshold
Ib = Ig > 100;      % Thresholding operation
figure;
imshow(Ib);
title('Black & White');
