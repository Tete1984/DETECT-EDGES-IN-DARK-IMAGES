im=imread('HE_dark_girl.png');
im=rgb2gray(im);
%edge_im=edge(im,'Sobel'); 
edge_im=edge(im,'Roberts');
%edge_im=edge(im,'Prewitt');
%edge_im=edge(im,'Canny');
%edge_im=edge(im,'LoG');
%edge_im=edge(im,'zerocross');
imshow(edge_im)

%LAPLACIAN FILTER
% l=fspecial('laplacian',0);
% ic_l=filter2(l,im);
% figure,imshow(ic_l)