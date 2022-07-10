clc;
close all;

[file,path] = uigetfile('*.jpg');
k = imread([path,file]);
subplot(3,3,1), imshow(k),title('original image tiger ');

k1 = imrotate(k,90);
subplot(3,3,2), imshow(k1),title('rotated image');

k2 = imresize(k,2);
subplot(3,3,3), imshow(k2),title('scaled image');

k3 = imtranslate(k,[100,50],'FillValues',[0 0 2]);
subplot(3,3,4), imshow(k3),title('translated image');