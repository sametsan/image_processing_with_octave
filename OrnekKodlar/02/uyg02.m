
% görüntüyü oku
R=imread('C:\Users\Public\Pictures\Sample Pictures\Koala.jpg');

% görüntü boyutlarý
[sat,sut,r]=size(R)


% resmin ortasýna çizgi 
for x=1:sat
  R(x,(sut/2),1)=255;%R
  R(x,(sut/2),2)=0;%G
  R(x,(sut/2),3)=0;%B
end

% görüntüle
imshow(R)

