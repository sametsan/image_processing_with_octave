I=imread('C:\octave\resimler\textures\1.3.12.tiff');
[sat,sut]=size(I)
O=uint8( zeros(sat,sut) );
minpix= double( min(min(I)) )
maxpix= double( max(max(I)) )
for x=1:sat
  for y=1:sut
    pix= double( I(x,y) );    
    O(x,y)= uint8( (pix-minpix)/(maxpix-minpix)*255 );
  end
end
%O=imadjust(I)
subplot(121);imshow(I)
subplot(122);imshow(O)