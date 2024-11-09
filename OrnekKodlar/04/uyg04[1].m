

% Histogram hesabý
I=imread('C:\octave\resimler\gri_resimler\image1.tif');

%histogram hesabý
%imhist(I);

%orjinal görüntü ve histogramý
subplot(221);imshow(I)
x=[0:255]; h=imhist(I,256);
subplot(223);bar(x,h)

% Kontrast ayarý
A=uint8( 255*imadjust( double(I)/255) );

%iyileþtirilmiþ görüntü ve histogramý
subplot(222);imshow(A)
x=[0:255]; h=imhist(A,256);
subplot(224);bar(x,h)

