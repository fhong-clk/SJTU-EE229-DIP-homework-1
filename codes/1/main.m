close all;
clear all;
clc;
ref=imread("../../rose.tif");
dsample2_img=dsample(ref,1/2);
dsample4_img=dsample(ref,1/4);
dsample8_img=dsample(ref,1/8);
dsample16_img=dsample(ref,1/16);
dsample32_img=dsample(ref,1/32);
usample2_img=usample(dsample2_img,2);
usample4_img=usample(dsample4_img,4);
usample8_img=usample(dsample8_img,8);
usample16_img=usample(dsample16_img,16);
usample32_img=usample(dsample32_img,32);
%figure(1)
%imshow(dsample2_img);
%figure(2)
%imshow(dsample4_img);
%figure(3)
%imshow(dsample8_img);
%figure(4)
%imshow(dsample16_img);
%figure(5)
%imshow(dsample32_img);
%figure(6)

figure(1)
subplot(2,3,1)
imshow(ref)
title('原图');

subplot(2,3,2)
imshow(usample2_img);
title('2倍下采样后放大');

subplot(2,3,3)
imshow(usample4_img);
title('4倍下采样后放大');

subplot(2,3,4)
imshow(usample8_img);
title('8倍下采样后放大');

subplot(2,3,5)
imshow(usample16_img);
title('16倍下采样后放大');

%figure(10)
subplot(2,3,6)
imshow(usample32_img);
title('32倍下采样后放大');

psnr2= cal_psnr(usample2_img,ref);
psnr4= cal_psnr(usample4_img,ref);
psnr8= cal_psnr(usample8_img,ref);
psnr16= cal_psnr(usample16_img,ref);
psnr32= cal_psnr(usample32_img,ref);
psnr=[psnr2 psnr4 psnr8 psnr16 psnr32 ];

