
% Histogram e�itleme
% histeq fonksiyonu ile
I=imread('C:\octave\resimler\gri_resimler\image1.tif');

%kontrast ayarlama  ile iyile�tirme
O1=uint8( 255*imadjust( double(I)/255) );
%O1=imadjust( mat2gray(I );

%histogram e�itleme ile iyile�tirmeO1=uint8( 255*imadjust( double(I)/255) );
O2=uint8( 255*histeq( double(I)/255) );
%O2= uint8( mat2gray(I,256)    );


subplot(231);imshow(I); title('orjinal resim');
subplot(232);imshow(O1);title('kontrast ayar�');
subplot(233);imshow(O2);title('histogram e�itleme');

subplot(234);imhist(I);
subplot(235);imhist(O1)
subplot(236);imhist(O2)
