%konvol�syon filtresi
% giri resim uygulamas�
I=imread('C:\octave\resimler\gri_resimler\kiel.bmp');
[sat,sut]=size(I);
% yeni resim bo� alan
O=uint8(zeros(sat,sut));
%filtre katsay�lar� (maske ya da a��rl�klar denir)
w=[1 1 1;  % ortalama - average filter
   1 1 1;
   1 1 1]/9; % her eleman 1/9 matris tan�mlad�k
for x=2:(sat-1) % d��tan 1 sat�r ve sutun ihimal edildi
  for y=2:(sut-1)
  %se�ilen piksele a��rl�klar� uygula
  % for d�ng�s�n�n a��k hali
   piksel=w(1,1)*I(x-1,y-1)+w(1,2)*I(x-1,y)+w(1,3)*I(x-1,y+1)...
         +w(2,1)*I(x  ,y-1)+w(2,2)*I(x  ,y)+w(2,3)*I(x,y+1) ...
         +w(3,1)*I(x+1,y-1)+w(3,2)*I(x+1,y)+w(3,3)*I(x+1,y+1);
   % hesaplanan yeni piksel de�erini ��k��a yaz
   O(x,y)=piksel; % w(11)*I(x-1,y(-))+w(1,2)
end
end
subplot(121);imshow(I)
subplot(122);imshow(O)