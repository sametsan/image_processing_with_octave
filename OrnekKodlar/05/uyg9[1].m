% Histogram eþitleme
L=256;
%I= uint8((L-1)*rand(5,5))
I=imread('C:\octave\resimler\textures\1.3.12.tiff'); 

O=uint8( 255*histeq( double(I)/255 , 32) );

subplot(221);imshow(I)
subplot(223);imhist(I)
subplot(222);imshow(O)
subplot(224);imhist(O)

