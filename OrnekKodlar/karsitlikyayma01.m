
% deneme


% Histogram
A=  imread('C:\octave\resimler\gri_resimler\rice.png') ;



min_pix = double( min(min(A)) )
max_pix = double( max(max(A)) )

B= uint8(  ( double(A)-min_pix)/(max_pix - min_pix)*255  );

figure(1);imshow(A)
figure(2);imshow(B)