% Görüntünün histogramýný hesaplar
I=imread('C:\octave\resimler\textures\1.3.12.tiff'); 

subplot(221);imshow(I)
subplot(223);imhist(I)

O= uint8( 255*imadjust(double(I)/255) );

subplot(222);imshow(O)
subplot(224);imhist(O)



