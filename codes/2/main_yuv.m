%main_yuv
clear;
close all;
clc;
ref=imread('../../iris.tif');
yuv=rgb2yuv(ref);
%yuv采样
yuv444=yuvdownsample(yuv,'444');
yuv422=yuvdownsample(yuv,'422');
yuv420=yuvdownsample(yuv,'420');
%对采样后的yuv插值
interpolation_yuv444=yuvupsample(yuv444,'444');
interpolation_yuv422=yuvupsample(yuv422,'422');
interpolation_yuv420=yuvupsample(yuv420,'420');
%转换成rgb

%不插值直接转换为rgb,psnr
rgb_without_interpolation444=yuv2rgb(yuv444);
psnr_without_interpolation444=psnr(ref,rgb_without_interpolation444);
rgb_without_interpolation422=yuv2rgb(yuv422);
psnr_without_interpolation422=psnr(ref,rgb_without_interpolation422);
rgb_without_interpolation420=yuv2rgb(yuv420);
psnr_without_interpolation420=psnr(ref,rgb_without_interpolation420);

%插值后转换为rgb,psnr
rgb444=yuv2rgb(interpolation_yuv444);
psnr444=psnr(ref,rgb444);
rgb422=yuv2rgb(interpolation_yuv422);
psnr422=psnr(ref,rgb422);
rgb420=yuv2rgb(interpolation_yuv420);
psnr420=psnr(ref,rgb420);


figure(1)
subplot(1,3,1)
imshow(yuv2rgb(yuv));
title('原图');

% y increase
yuv1=yuv;
yuv1(:,:,1)=min(yuv1(:,:,1)+50,255);
rgb1=yuv2rgb(yuv1);
subplot(1,3,2)
imshow(rgb1);
title('Y增大50');
% y decrease
yuv2=yuv;
yuv2(:,:,1)=max(yuv2(:,:,1)-50,0);
rgb2=yuv2rgb(yuv2);
subplot(1,3,3)
imshow(rgb2);
title('Y减小50');
figure(2)
subplot(1,3,1)
imshow(yuv2rgb(yuv));
title('原图');
% u increase
yuv3=yuv;
yuv3(:,:,2)=min(yuv3(:,:,2)+50,255);
rgb3=yuv2rgb(yuv3);
subplot(1,3,2)
imshow(rgb3);
title('U增大50');
% u decrease
yuv4=yuv;
yuv4(:,:,2)=max(yuv4(:,:,2)-50,0);
rgb4=yuv2rgb(yuv4);
subplot(1,3,3)
imshow(rgb4);
title('U减小50');

figure(3)
subplot(1,3,1)
imshow(yuv2rgb(yuv));
title('原图');
% v increase
yuv5=yuv;
yuv5(:,:,3)=min(yuv5(:,:,3)+50,255);
rgb5=yuv2rgb(yuv5);
subplot(1,3,2)
imshow(rgb5);
title('V增大50');
% v decrease
yuv6=yuv;
yuv6(:,:,3)=max(yuv6(:,:,3)-50,0);
rgb6=yuv2rgb(yuv6);
subplot(1,3,3)
imshow(rgb6);
title('V减小50');

