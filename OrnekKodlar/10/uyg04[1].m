%konvolüsyon filtresi

% giri resim uygulamasý
I=imread('C:\octave\resimler\gri_resimler\kiel.bmp');
[sat,sut]=size(I);

% yeni resim boþ alan
O=uint8(zeros(sat,sut));

%filtre katsayýlarý (maske ya da aðýrlýklar denir)
w=[1 1 1;1 1 1;1 1 1]/9; % matris tanýmladýk


for x=2:(sat-1) % dýþtan 1 satýr ve sutun ihimal edildi
  for y=2:(sut-1)
  %seçilen piksele aðýrlýklarý uygula
  
  piksel=0;
  for i=-1:1
    for j=-1:1
    piksel=piksel+w(i+2,j+2)*I(x+i,y+j) % w11*I(x-1,y-1)
    
    end
   end
   
   % hesaplanan yeni piksel deðerini çýkýþa yaz
   O(x,y)=piksel; % w(11)*I(x-1,y(-))+w(1,2)
end
end
imshow(I)