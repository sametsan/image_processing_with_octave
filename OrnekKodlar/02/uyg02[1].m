
% g�r�nt�y� oku
R=imread('C:\Users\Public\Pictures\Sample Pictures\Koala.jpg');

% g�r�nt� boyutlar�
[sat,sut,r]=size(R)


% resmin ortas�na �izgi 
for x=1:sat
  R(x,(sut/2),1)=255;%R
  R(x,(sut/2),2)=0;%G
  R(x,(sut/2),3)=0;%B
end

% g�r�nt�le
imshow(R)

