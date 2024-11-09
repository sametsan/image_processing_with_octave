%previt yöntemi ile kenar bulma
i=imread("c:/octave/resimler/gri_resimler/rice.png");

wx=[-1 0 1 ;
-1 0 1;
-1 0 1];


wy=[-1 -1 -1;
0 0 0;
1 1 1];


ox=imfilter(i,wx);
subplot(131);imshow(ox);
oy=imfilter(i,wy);
subplot(132);imshow(oy);

ox=double(ox);
oy=double(oy);

o=sqrt(ox.*ox+oy.*oy);

subplot(133);imshow(uint8(o));

