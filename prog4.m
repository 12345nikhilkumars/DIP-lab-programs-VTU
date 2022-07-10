clc;
close all;

[file,path] = uigetfile('*.jpg');
k = imread([path,file]);
imshow(k),title('original image tiger ');

k = rgb2gray(k);

k1=edge(k,"prewitt");
k2=edge(k,"Canny");
figure,
imshowpair(k1,k2,'montage'),title('soble filtering, canny filtering');
