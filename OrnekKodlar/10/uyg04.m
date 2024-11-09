%konvol�syon filtresi

% giri resim uygulamas�
I=imread('C:\octave\resimler\gri_resimler\kiel.bmp');
[sat,sut]=size(I);

% yeni resim bo� alan
O=uint8(zeros(sat,sut));

%filtre katsay�lar� (maske ya da a��rl�klar denir)
w=[1 1 1;1 1 1;1 1 1]/9; % matris tan�mlad�k


for x=2:(sat-1) % d��tan 1 sat�r ve sutun ihimal edildi
  for y=2:(sut-1)
  %se�ilen piksele a��rl�klar� uygula
  
  piksel=0;
  for i=-1:1
    for j=-1:1
    piksel=piksel+w(i+2,j+2)*I(x+i,y+j) % w11*I(x-1,y-1)
    
    end
   end
   
   % hesaplanan yeni piksel de�erini ��k��a yaz
   O(x,y)=piksel; % w(11)*I(x-1,y(-))+w(1,2)
end
end
imshow(I)