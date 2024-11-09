x=0;


R= uint8(zeros(500,500) ) ;
R(:,:)=255;
% görüntü boyutlarý
[sat,sut,r]=size(R)
% resmin ortasýna dikdörtgen
%satýrlar
for x=100:400
  R(150,x)=0;%R 
  R(350,x)=0;%R
end
x=0;
%sütunlar
for x=150:350
  R(x,100)=0;%R 
  R(x,400)=0;%R
end
% görüntüle
imshow(R)
imwrite(R,'sonuc.jpg')


