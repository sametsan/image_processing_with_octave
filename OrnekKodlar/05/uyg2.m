I=imread('C:\octave\resimler\textures\1.3.12.tiff');
[sat,sut]=size(I)
O=uint8( zeros(sat,sut) );
minpix= double( min(min(I)) )
maxpix= double( max(max(I)) )

O=imadjust( double(I)/255,[0 1],[0.5 1]);

subplot(121);imshow(I)
subplot(122);imshow(O)