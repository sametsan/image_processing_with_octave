
% g�r�nt�y� oku
R=imread('C:\Users\Public\Pictures\Sample Pictures\Koala.jpg');

% g�r�nt� boyutlar�
[sat,sut,r]=size(R)

% bir pikselin RGB de�erlerini almak
kirmizi=R(10,10,1)
yesil=R(10,10,2)
mavi=R(10,10,3)

% g�r�nt�le
imshow(R)

