function img = dsample(ref,scale)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
[X,Y]=size(ref);
M=round(X*scale);
N=round(Y*scale);
img=zeros(M,N);
for m=1:M
    for n=1:N
        x=min(round((m-1)/scale),X-1)+1;
        y=min(round((n-1)/scale),Y-1)+1;
        img(m,n)=ref(x,y);
    end
end
img=uint8(img);
end

