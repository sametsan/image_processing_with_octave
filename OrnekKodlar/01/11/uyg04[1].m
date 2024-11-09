
% Resmi oku
Resim1=imread('C:\Users\Public\Pictures\Sample Pictures\Penguins.jpg');
%bölgeye ait koordinatlar
xb=40;
yb=610;
ysat=140;
ysut=225;

Resim2=dikdortgenEkle(Resim1,xb,yb,ysat,ysut);

%bölgeye ait koordinatlar
xb=50;
yb=110;
ysat=140;
ysut=225;
Resim2=dikdortgenEkle(Resim2,xb,yb,ysat,ysut);

imshow(Resim2);

