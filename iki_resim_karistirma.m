
i=imread('c:/octave/resimler/4.1.06.tiff');
j=imread('c:/octave/resimler/house.tiff');

[sat,sut,r] = size(i);

h=uint8(zeros(sat,sut,r));

[sat,sut,r]=size(i);


h=(i+j)/2;


imshow(h);