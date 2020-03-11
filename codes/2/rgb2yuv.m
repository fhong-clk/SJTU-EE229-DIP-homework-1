function yuv = rgb2yuv(rgb)
%rgb2yuv
rgb = double(rgb);
yuv=zeros(size(rgb));
r=rgb(:,:,1);
g=rgb(:,:,2);
b=rgb(:,:,3);
 
y=0.299.*r+0.587.*g+0.114.*b;
u=-0.1687.*r-0.3313.*g+ 0.5.*b+128;
v=0.5.*r-0.4187.*g-0.0813.*b+128;
yuv(:,:,1)=y;
yuv(:,:,2)=u;
yuv(:,:,3)=v;
%yuv=uint8(yuv);
end

