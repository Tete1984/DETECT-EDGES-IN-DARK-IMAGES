% im=imread('dark_build_original.png');
% im=rgb2gray(im);
% a=0.09;
% b1=imadd(im,128);
% b2=immultiply(im,9);
% % imshow(b2)
% 
% % %MASCARA DE CAPUTO-FABRIZIO
% cf0=(1./a)*(1-exp(-a./(1-a)));
% cf1=(1./a)*(2*exp(-a./(1-a))-exp(-2*a./(1-a))-1);
% cf2=(1./a)*(2*exp(-2*a./(1-a))-exp(-3*a./(1-a))-exp(-a./(1-a)));
% sumcf=(cf0+cf1+cf2)/8;
% maskcf=[cf2 0 cf2 0 cf2; 0 cf1 cf1 cf1 0; cf2 cf1 sumcf cf1 cf2; 0 cf1 cf1 cf1 0; cf2 0 cf2 0 cf2];
% im_conv=conv2(im,maskcf,'same');
% imshow(im_conv)

%%MASCARA DE ASUMU
% a0=(-1).^(a)./(gamma(1-a));
% a1=(2*1.^(a)-2.^(a))./(gamma(1-a));
% a2=(2.^(a)-1.^(a))./(gamma(1-a));
% sum=(a0+a1+a2)/8;
% %sum=(a0+a1+a2)/8;
% I=[a2 0 a2 0 a2; 0 a1 a1 a1 0; a2 a1 sum a1 a2; 0 a1 a1 a1 0; a2 0 a2 0 a2];
%R=a0*I+a1*I.^2+a2*I.^3; DIO MUY MALOS RESULTADOS
%CONVOLUCION DE IMAGEN CON MASCARA
%im_conv=conv2(im,R,'same');
% imshow(im_conv)
%HISTOGRAM EQUALIZATION
%histog=histeq(im);
%imshow(histog)
% %MAXIMUM FILTER
% cmax=nlfilter(im,[3,3],'max(x(:))');
% imshow(cmax)
% %MINIIMUM FILTER
% cmin=nlfilter(im,[3,3],'min(x(:))');
% imshow(cmin)

%MEDIAN FILTER
% med=medfilt2(im,[5,5]);
% imshow(med)
figure(1),subplot(1,1,1), imshow(b2)
%figure(1),subplot(1,2,2),imshow(im)