

% Histogram hesab�
I=imread('C:\octave\resimler\gri_resimler\image1.tif');

%histogram hesab�
%imhist(I);

%orjinal g�r�nt� ve histogram�
subplot(221);imshow(I)
x=[0:255]; h=imhist(I,256);
subplot(223);bar(x,h)

% Kontrast ayar�
A=uint8( 255*imadjust( double(I)/255) );

%iyile�tirilmi� g�r�nt� ve histogram�
subplot(222);imshow(A)
x=[0:255]; h=imhist(A,256);
subplot(224);bar(x,h)

