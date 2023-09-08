x=imread('ASUMU_DETECTOR_BECQUER_0_81.png');
x=rgb2gray(x);

%Offset=[zeros(40,1) (1:40)'];
glcms = graycomatrix(x,'Offset',[1 0;1 1; 0 1; -1 1]);
stats = graycoprops(glcms,{'Contrast', 'Correlation', 'Energy','Homogeneity'})