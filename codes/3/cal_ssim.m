function ssim = cal_ssim(ref, img) 
%Ô­Àí²Î¿¼https://www.cnblogs.com/wxl845235800/p/7692578.html

a = double(ref);  
b = double(img);  
c1 = (0.01*255)^2;  
c2 = (0.03*255)^2;  
u_a=imgaussfilt(a,1.5);
u_b=imgaussfilt(b,1.5);

u2_a = u_a.*u_a;  
u2_b = u_b.*u_b;  

var_a = imgaussfilt(a.*a,1.5) - u2_a;  
var_b = imgaussfilt(b.*b,1.5) - u2_b;  
cov_ab = imgaussfilt(a.*b,1.5) - u_a.*u_b;   
ssim_map = ((2*u_a.*u_b + c1).*(2*cov_ab + c2))./((u2_a + u2_b + c1).*(var_a + var_b + c2));   
ssim = mean2(ssim_map);  
 
return 
