I=imread('C:\octave\resimler\gri_resimler\image1.tif');

minpix=min(min(I))
maxpix=max(max(I))

A=uint8( 255*imadjust( double(I)/255,double([minpix maxpix])./255, [0.0 100.0]/255) );


yeni_minpix=min(min(A))
yeni_maxpix=max(max(A))

subplot(121);imshow(I);
subplot(122);imshow(A);
