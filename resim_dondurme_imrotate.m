
i=imread('c:/octave/resimler/house.tiff');

teta=45;
h=imrotate(i,teta,'bilinear','crop');

imshow(h);