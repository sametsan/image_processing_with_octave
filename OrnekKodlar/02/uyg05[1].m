clear all
% görüntüyü oku

R= uint8(zeros(500,500) ) ;
R(:,:)=200;
% görüntü boyutları
[sat,sut,r]=size(R)
% resmin ortasına dikdörtgen
%satırlar
satb=100;
sutb=300;
yukseklik=200;
genislik=200;

for satir=satb:(satb+yukseklik)
  for sutun=sutb:(sutb+genislik)
      R(satir,sutun)=0;      
  end
end

% görüntüle
imshow(R)



