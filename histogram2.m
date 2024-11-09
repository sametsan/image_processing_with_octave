i= imread('C:/octave/resimler/gri_resimler/image1.tif');


a=uint8(255*imadjust(double(i)/255));


subplot(221); imshow(i);
subplot(222); imshow(a);
subplot(223); imhist(i);
subplot(224); imhist(a);