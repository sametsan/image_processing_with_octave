
I=imread('C:\octave\resimler\cornfield.bmp');


W=[ 0 -1  0;
   -1  5  -1;
    0  -1  0];   
   
O=imfilter(I,W);
O2=imfilter(O,W);

figure(1);imshow(I)
figure(2);imshow(O)
figure(3);imshow(O2)