
I=imread('C:\octave\resimler\textures\1.5.01.tiff');


%O=imadjust(double(I)/255,[0.5;1]);
O=imadjust(double(I)/255);

subplot(121);imshow(I)
subplot(122);imshow( uint8(O*255) )