clc;
close all;

[file,path] = uigetfile('*.jpg');
k = imread([path,file]);
subplot(3,3,1), imshow(k),title('original image tiger ');

k1 = imrotate(k,90);
subplot(3,3,2), imshow(k1),title('rotated image');

k2 = imresize(k,2);
subplot(3,3,3), imshow(k2),title('scaled image');

% with rgb values filling to translated axes
k3 = imtranslate(k,[100,50],'FillValues',[255 0 0]);
subplot(3,3,4), imshow(k3),title('translated image');

%grayscale filling to translated axes
k4 = imtranslate(k,[100,50],'FillValues',150);
subplot(3,3,5), imshow(k4),title('translated image');