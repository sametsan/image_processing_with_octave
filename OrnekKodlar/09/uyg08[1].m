
I=imread('C:\octave\resimler\monarch.bmp');


W=[ -1 -1  -1;
   -1  9  -1;
    -1  -1  -1];   
   
O=imfilter(I,W);

figure(1);imshow(I)
figure(2);imshow(O)
