%konvolüsyon filtresi
% giri resim uygulamasý
I=imread('C:\octave\resimler\gri_resimler\kiel.bmp');
[sat,sut]=size(I);
% yeni resim boþ alan
O=uint8(zeros(sat,sut));
%filtre katsayýlarý (maske ya da aðýrlýklar denir)
w=[1 1 1;  % ortalama - average filter
   1 1 1;
   1 1 1]/9; % her eleman 1/9 matris tanýmladýk
for x=2:(sat-1) % dýþtan 1 satýr ve sutun ihimal edildi
  for y=2:(sut-1)
  %seçilen piksele aðýrlýklarý uygula
  % for döngüsünün açýk hali
   piksel=w(1,1)*I(x-1,y-1)+w(1,2)*I(x-1,y)+w(1,3)*I(x-1,y+1)...
         +w(2,1)*I(x  ,y-1)+w(2,2)*I(x  ,y)+w(2,3)*I(x,y+1) ...
         +w(3,1)*I(x+1,y-1)+w(3,2)*I(x+1,y)+w(3,3)*I(x+1,y+1);
   % hesaplanan yeni piksel deðerini çýkýþa yaz
   O(x,y)=piksel; % w(11)*I(x-1,y(-))+w(1,2)
end
end
subplot(121);imshow(I)
subplot(122);imshow(O)