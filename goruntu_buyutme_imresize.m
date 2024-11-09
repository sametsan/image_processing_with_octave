
i=imread("c:/octave/resimler/house.tiff");

oran=5;
h=imresize(i,oran,'cubic');

imshow(h);