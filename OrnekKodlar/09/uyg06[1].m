function test
I=imread('C:\octave\resimler\gri_resimler\rice.png');

%W=fspecial("gaussian",3,5);
W=[1 1 1;
   1 1 1;
   1 1 1]/9;   
O1=imfilter(I,W);

W=[0  1  0; %laplacian
   1 -4  1;
   0  1  0];

O2=imfilter(O1,W); 

O3=imadjust( double(O2)/255);
  
figure(1);imshow(I)
figure(2);imshow(O3)

% ortalama almadan kenar bul

W=[0  1  0; %laplacian
   1 -4  1;
   0  1  0];

O=imfilter(I,W); 

O2=imadjust( double(O)/255);
figure(3);imshow(O2)




end
