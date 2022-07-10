clc;
close all;

[file,path] = uigetfile('*.jpg');
k = imread([path,file]);
subplot(3,3,1), imshow(k),title('original image tiger ');

% erosion and dilation
s = strel('disk',5);

k1 = imerode(k,s);
subplot(3,3,2),imshow(k1),title('eroded image');

k2 = imdilate(k,s);
subplot(3,3,3),imshow(k2),title('dilated image');