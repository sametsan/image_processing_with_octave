
% Resmi oku
Resim1=imread('C:\Users\Public\Pictures\Sample Pictures\Penguins.jpg');
%bölgeye ait koordinatlar
xb=40;
yb=110;
ysat=140;
ysut=225;

Resim2=goruntuKirp(Resim1,xb,yb,ysat,ysut);

imshow(Resim2);

