%im=imread('median_dark_office_original.png');
%im=rgb2gray(im);
% figure(1),imshow(im)
% a=0.7;
% %FILTRO DE: Wessam Sayed El Araby, Radiographic Images 
% %Fractional Edge Detection Based on Genetic Algorithm
% c0=(a.^2-a)/6;
% c1=-a/5;
% %filtro horizontal
% px=[c0 c0 c0; c1 c1 c1; c1 1 c1];
% imx=filter2(px,im);
% %filtro vertical
% py=px';
% imy=filter2(py,im);
% 
% %mostrar resultado
% edge_p=sqrt(imx.^2+imy.^2);
% figure(1),imshow(edge_p/255)

%FILTRO DE CAPUTO
im=imread('HE_dark_girl.png');
im=rgb2gray(im);
a=0.99;
c0=(1/gamma(2-a))*(1.^(1-a));
c1=(1/gamma(2-a))*(2.^(1-a)-2*1.^(1-a));
cm=(1/gamma(2-a))*(2.^(1-a)-1.^(1-a));
%filtro horizontal
px=[c1 cm c0; c1 cm c0; c1 cm c0];
imx=filter2(px,im);
%filtro vertical
py=px';
imy=filter2(py,im);

%mostrar resultado
edge_p=sqrt(imx.^2+imy.^2);
figure(1),imshow(edge_p/255)


%FILTRO DE GUSTAVO-ASUMU
% im=rgb2gray(im);
% a=0.9;
% c0=(2.*(1^a)-2.^a)./gamma(1-a);
% c1=((-1).^a)./gamma(1-a);
% cm=c0+c1;
% %filtro horizontal
% px=[c0 cm c1;c0 cm c1;c0 cm c1];
% imx=filter2(px,im);
% %filtro vertical
% py=px';
% imy=filter2(py,im);
% edge_p=sqrt(imx.^2+imy.^2);
% figure(1),imshow(edge_p/255)

%
%
% %FILTRO DE CAPUTO-FABRIZIO
% im=imread('HE_dark_girl.png');
% im=rgb2gray(im);
% a=0.99;
% %filtro horizontal
% cf0=(1./a)*(1-exp(-a/(1-a)));
% cf1=(1./a)*(2*exp(-a/(1-a))-exp(-2*a/(1-a))-1);
% cfm=(1./a)*(exp(-a/(1-a))-exp(-2*a/(1-a)));
% px=[cf1 cfm cf0; cf1 cfm cf0; cf1 cfm cf0];
% imx=filter2(px,im);
% 
% %filtro vertical
% py=px';
% imy=filter2(py,im);
% 
% %mostrar resultado
% edge_p=sqrt(imx.^2+imy.^2);
% figure(1),imshow(edge_p/255)


% %MEDIAN FILTER
% med=medfilt2(im,[5,5]);
% %figure(1),subplot(1,2,1), imshow(im)
% figure(1),subplot(1,1,1),imshow(med)
