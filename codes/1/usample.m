function img = usample(ref,scale)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
[X,Y]=size(ref);
M=round(X*scale);
N=round(Y*scale);
img=zeros(M,N);
for m=1:M
    for n=1:N
        x=(m-1)/scale+1;
        y=(n-1)/scale+1;

        x1=floor(x);x2=x1+1;
        y1=floor(y);y2=y1+1;
        
        Q11=ref(min(x1,X),min(y1,Y));
        Q12=ref(min(x1,X),min(y2,Y));
        Q21=ref(min(x2,X),min(y1,Y));
        Q22=ref(min(x2,X),min(y2,Y));
        
        
        
        img(m,n)=(Q11*(x2-x)*(y2-y)+Q21*(x-x1)*(y2-y)+Q12*(x2-x)*(y-y1)+Q22*(x-x1)*(y-y1))/(x2-x1)/(y2-y1);
    end
end
img=uint8(img);
end

