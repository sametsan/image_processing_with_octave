
I= imread('C:\octave\resimler\gri_resimler\rice.png') ;
%ortalama alan filtre - average
 
W=ones(5,5)/25;%5x5
 %
O=imfilter(I,W);

subplot(121);imshow(I)
subplot(122);imshow(O)