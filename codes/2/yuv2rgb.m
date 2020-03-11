function rgb  = yuv2rgb(yuv)
yuv = double(yuv);
rgb=zeros(size(yuv));
y=yuv(:,:,1);
u=yuv(:,:,2);
v=yuv(:,:,3);
r=y+1.402.*(v-128);
g=y-0.3441.*(u-128)-0.7141.*(v-128);
b=y+1.772.*(u-128);
rgb(:,:,1) = r;
rgb(:,:,2) = g;
rgb(:,:,3) = b;
rgb=uint8(rgb);
end