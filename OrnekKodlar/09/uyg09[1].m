
I=imread('C:\octave\resimler\monarch.bmp');


W=fspecial("log",5,0.5) 
   
O=imfilter(I,W);

O2=imadjust( double(O)/255 );


figure(1);imshow(I)
figure(2);imshow(O2)
