x=0;


R= uint8(zeros(500,500) ) ;
R(:,:)=255;
% g�r�nt� boyutlar�
[sat,sut,r]=size(R)
% resmin ortas�na dikd�rtgen
%sat�rlar
for x=100:400
  R(150,x)=0;%R 
  R(350,x)=0;%R
end
x=0;
%s�tunlar
for x=150:350
  R(x,100)=0;%R 
  R(x,400)=0;%R
end
% g�r�nt�le
imshow(R)
imwrite(R,'sonuc.jpg')


