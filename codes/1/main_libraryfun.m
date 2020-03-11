close all;
clear all;
clc;
ref=imread("../../rose.tif");
dsample2_img=imresize(ref,1/2);
dsample4_img=imresize(ref,1/4);
dsample8_img=imresize(ref,1/8);
dsample16_img=imresize(ref,1/16);
dsample32_img=imresize(ref,1/32);
usample2_img=imresize(dsample2_img,2,'bilinear');
usample4_img=imresize(dsample4_img,4,'bilinear');
usample8_img=imresize(dsample8_img,8,'bilinear');
usample16_img=imresize(dsample16_img,16,'bilinear');
usample32_img=imresize(dsample32_img,32,'bilinear');
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