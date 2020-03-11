clear;
close all;
clc;
%main
ref=imread('../../iris.tif');
hsi=rgb2hsi(ref);
rgb=hsi2rgb(hsi);
ref_double=im2double(ref);
%psnr(ref,uint8(rgb*255))

figure(1)
subplot(1,3,1)
imshow(rgb);
title('原图');

% h increase
hsi1=hsi;
hsi1(:,:,1)=min(hsi1(:,:,1)+0.2,1);
rgb1=hsi2rgb(hsi1);
subplot(1,3,2)
imshow(rgb1);
title('H增大0.2');

% h decrease
hsi2=hsi;
hsi2(:,:,1)=max(hsi2(:,:,1)-0.2,0);
rgb2=hsi2rgb(hsi2);
subplot(1,3,3)
imshow(rgb2);
title('H减小0.2');

figure(2)
subplot(1,3,1)
imshow(rgb);
title('原图');

% s increase
hsi3=hsi;
hsi3(:,:,2)=min(hsi3(:,:,2)+0.2,1);
rgb3=hsi2rgb(hsi3);
subplot(1,3,2)
imshow(rgb3);
title('S增大0.2');


% s decrease
hsi4=hsi;
hsi4(:,:,2)=max(hsi4(:,:,2)-0.2,0);
rgb4=hsi2rgb(hsi4);
subplot(1,3,3)
imshow(rgb4);
title('S减小0.2');

figure(3)
subplot(1,3,1)
imshow(rgb);
title('原图');

% i increase
hsi5=hsi;
hsi5(:,:,3)=min(hsi5(:,:,3)+0.2,1);
rgb5=hsi2rgb(hsi5);
subplot(1,3,2)
imshow(rgb5);
title('I增大0.2');


% i decrease
hsi6=hsi;
hsi6(:,:,3)=max(hsi6(:,:,2)-0.2,0);
rgb6=hsi2rgb(hsi6);
subplot(1,3,3)
imshow(rgb6);
title('I增大0.2');