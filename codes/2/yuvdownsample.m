function out = yuvdownsample(yuv,type)
%yuv sample , type={'444','422','420'}
out=yuv;
if(type=='444')
    out=yuv;
    flag=1;
end
if(type=='422')
     idx=2:2:size(yuv,2);
        out(:,idx,2)=out(:,idx-1,2);
        out(:,idx-1,3)=out(:,idx,3);
    
    flag=2;
end
if(type=='420')
      idx=2:2:size(yuv,2);
        out(:,idx,2:3)=out(:,idx-1,2:3);
        
        
     
      idx=2:2:size(yuv,1);
        out(idx,:,2)=out(idx-1,:,2);
        out(idx-1,:,3)=out(idx,:,3);
     
    flag=3;
end
end

