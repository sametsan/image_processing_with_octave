i= imread('C:/octave/resimler/gri_resimler/image1.tif');

minpix = min(min(i));
mixpix = max(max(i));


a=uint8(255*imadjust(double(i)/255));

subplot(121);imshow(i);
subplot(122);imshow(a);