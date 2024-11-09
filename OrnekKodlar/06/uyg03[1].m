

I=imread('C:\octave\resimler\textures\1.5.01.tiff');
[sat,sut]=size(I);
O=uint8( zeros(sat,sut) );

minPix= double( min(min(I)))
maxPix= double( max(max(I)))
genlik=maxPix-minPix
ymin=150;
ymax=255;

for x=1:sat
  for y=1:sut
    %O(x,y)= uint8( ( double(I(x,y))-minPix)/genlik*(255-0)+0 );
    O(x,y)= uint8( ( double(I(x,y))-minPix)...
    /genlik*(ymax-ymin)+ymin );
  end
end

figure(1);imshow(I)
figure(2);imshow(O)