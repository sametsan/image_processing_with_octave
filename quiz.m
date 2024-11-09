I= imread("C:/octave/resimler/gri_resimler/rice.png");

w = fspecial('laplacian',0,1);

o= imfilter(I,w);

subplot(121);
imshow(o);

p=medfilt2(I,[3 3]);

k=imfilter(p,w);

subplot(122);
imshow(k);