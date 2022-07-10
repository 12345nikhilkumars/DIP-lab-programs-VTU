clc;
close all;

[file,path] = uigetfile('*.jpg');
k = imread([path,file]);
%k = rgb2gray(k);
subplot(3,3,1),imshow(k),title('OG');
subplot(3,3,4),imhist(k), title('histogram of OG image');

a = histeq(k);
subplot(3,3,2), imshow(a), title('enhanced');
subplot(3,3,5),imhist(a), title('histogram of enhanced image');
