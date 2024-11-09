function uyg07
I=imread('C:\octave\resimler\textures\1.5.01.tiff');

H=histogram(I);
subplot(221);imshow(I);
subplot(222);bar(H,'hist')% orjinal resmin histogramý
O= uint8(255*imadjust( double(I)/255));
H=histogram(O);
subplot(223);imshow(O);
subplot(224);bar(H,'hist')% kontrast ayarýndan sonra

end

function H=histogram(I)

[sat,sut]=size(I);
H=zeros(1,256);
for x=1:sat
  for y=1:sut
    H( I(x,y)+1 )=H( I(x,y)+1 )+1 ;
  end
end

end
