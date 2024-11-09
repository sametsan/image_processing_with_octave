
% Histogram eþitleme
% histeq fonksiyonu ile
I=imread('C:\octave\resimler\gri_resimler\image1.tif');

%kontrast ayarlama  ile iyileþtirme
O1=uint8( 255*imadjust( double(I)/255) );
%O1=imadjust( mat2gray(I );

%histogram eþitleme ile iyileþtirmeO1=uint8( 255*imadjust( double(I)/255) );
O2=uint8( 255*histeq( double(I)/255) );
%O2= uint8( mat2gray(I,256)    );


subplot(231);imshow(I); title('orjinal resim');
subplot(232);imshow(O1);title('kontrast ayarý');
subplot(233);imshow(O2);title('histogram eþitleme');

subplot(234);imhist(I);
subplot(235);imhist(O1)
subplot(236);imhist(O2)
