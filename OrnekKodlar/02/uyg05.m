clear all
% g�r�nt�y� oku

R= uint8(zeros(500,500) ) ;
R(:,:)=200;
% g�r�nt� boyutlar�
[sat,sut,r]=size(R)
% resmin ortas�na dikd�rtgen
%sat�rlar
satb=100;
sutb=300;
yukseklik=200;
genislik=200;

for satir=satb:(satb+yukseklik)
  for sutun=sutb:(sutb+genislik)
      R(satir,sutun)=0;      
  end
end

% g�r�nt�le
imshow(R)



