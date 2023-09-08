x=imread('DOS_CRIOS.png');%original image
y=imread('DOS_CRIOS_PREWITT.png');%restored image

x=rgb2gray(x);
y=rgb2gray(y);
[peaksnr]= psnr(y, x)