
% görüntüyü oku
R=imread('C:\Users\Public\Pictures\Sample Pictures\Koala.jpg');

% görüntü boyutlarý
[sat,sut,r]=size(R)

% bir pikselin RGB deðerlerini almak
kirmizi=R(10,10,1)
yesil=R(10,10,2)
mavi=R(10,10,3)

% görüntüle
imshow(R)

