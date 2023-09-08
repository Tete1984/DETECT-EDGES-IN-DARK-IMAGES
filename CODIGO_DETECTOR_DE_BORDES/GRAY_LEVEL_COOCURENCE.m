x=imread('dark_car_original_HE.png');
x=rgb2gray(x);

%Offset=[zeros(40,1) (1:40)'];
glcms = graycomatrix(x,'Offset',[1 0;1 1; 0 1; -1 1]);
stats = graycoprops(glcms,{'Contrast', 'Correlation', 'Energy','Homogeneity'})