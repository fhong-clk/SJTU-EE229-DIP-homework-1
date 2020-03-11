function hsi = rgb2hsi(rgb) 
% rgb2hsi
rgb=im2double(rgb);
hsi=zeros(size(rgb));
r=rgb(:,:,1);
g=rgb(:,:,2);
b=rgb(:,:,3);
num=0.5*((r-g)+(r-b));
den=max(sqrt((r-g).^2+(r-b).*(g-b)),eps);
theta=acos(num./den);
h=theta;
h(b>g)=2*pi-h(b>g);
h=h/2/pi;
num=min(min(r,g),b);
den=max(r+g+b,eps);
s=1-3.*num./den;
i=(r+g+b)/3;
hsi(:,:,1)=h;
hsi(:,:,2)=s;
hsi(:,:,3)=i;

