
% g�r�nt�y� oku

R= uint8(zeros(500,500,3) ) ;
R(:,:,1)=255;

% g�r�nt� boyutlar�
[sat,sut,r]=size(R)


% resmin ortas�na �izgi 
for x=1:sat
  R(x,(sut/2),1)=255;%R
  R(x,(sut/2),2)=255;%G
  R(x,(sut/2),3)=255;%B
end

% g�r�nt�le
imshow(R)

