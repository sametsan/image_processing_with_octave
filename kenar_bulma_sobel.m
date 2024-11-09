%sobel yöntemi ile kenar bulma
pkg load image
i=imread('./s.jpg');

wx=[-1 0 1 ;
-2 0 2;
-1 0 1];


wy=[-1 -2 -1;
0 0 0;
1 2 1];


ox=imfilter(i,wx);
subplot(131);imshow(ox);
oy=imfilter(i,wy);
subplot(132);imshow(oy);

ox=double(ox);
oy=double(oy);

o=sqrt(ox.*ox+oy.*oy);

subplot(133);imshow(uint8(o));


pause
