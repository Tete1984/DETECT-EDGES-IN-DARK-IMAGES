x=imread('median_GAM1_EN_RGB.png');%original image
y=imread('median_GAM1_EN_RGB_CF_0_9.png');%restored image

x=rgb2gray(x);
y=rgb2gray(y);
[peaksnr]= psnr(y, x)