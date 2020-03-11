function psnr = cal_psnr(img,ref)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
[X,Y]=size(ref);
img=double(img);
ref=double(ref);
max=255;
mes=sum(sum((img-ref).^2))/X/Y;
psnr=10*log10(max^2/(mes));
end

