%
%I=imread('C:\octave\resimler\gri_resimler\image1.tif');,
I=imread('C:\octave\resimler\textures\1.4.03.tiff');
s=size(I)
%kontrast ayarý ile iyileþtirme
tic
O1= imadjust( double(I)/255);
t1=toc
% histogram eþitleme ile iyileþtirme
tic
O2= histeq(double(I)/255,256);
t2=toc

subplot(231);imshow(I);title('orjinal resim');
subplot(234);imhist(I); 
subplot(232);imshow(O1);title('imadjust ile');
subplot(235);imhist(O1); 
subplot(233);imshow(O2);title('histeq ile');
subplot(236);imhist(O2); 

