I=imread('C:\octave\resimler\textures\1.5.01.tiff');


O= uint8( 255*histeq(I,256) );

subplot(221);imshow(I);
subplot(222);imhist(I);
subplot(223);imshow(O);
subplot(224);imhist(O);







