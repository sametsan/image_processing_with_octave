%LOG (laplacien of gaussian) yöntemi ile kenar bulma
i=imread("c:/octave/resimler/gri_resimler/rice.png");

w=fspecial('log',13,1)

o=imfilter(i,w);

imshow(uint8(100*o));

