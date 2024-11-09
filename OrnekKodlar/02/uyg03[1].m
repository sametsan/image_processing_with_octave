
% görüntüyü oku

R= uint8(zeros(500,500,3) ) ;
R(:,:,1)=255;

% görüntü boyutlarý
[sat,sut,r]=size(R)


% resmin ortasýna çizgi 
for x=1:sat
  R(x,(sut/2),1)=255;%R
  R(x,(sut/2),2)=255;%G
  R(x,(sut/2),3)=255;%B
end

% görüntüle
imshow(R)

