
%
I=imread('C:\octave\resimler\gri_resimler\image1.tif');

minpix=min(min(I))
maxpix=max(max(I))

O= uint8(255*imadjust( double(I)/255) );

yminpix=min(min(O))
ymaxpix=max(max(O))

subplot(121);imshow(I)
subplot(122);imshow(O)

