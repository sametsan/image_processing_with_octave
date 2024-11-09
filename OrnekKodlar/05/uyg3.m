% G�r�nt�n�n histogram�n� hesaplamak
I=imread('C:\octave\resimler\textures\1.3.12.tiff'); 
[sat,sut]=size(I);
%Histogram sonucu i�in yer ay�r
h=zeros(1,256);%

for x=1:sat
  for y=1:sut
    % piksel de�erini al (0-255)
    indis=I(x,y) +1 ;  % (1-256)  
    % ilgili piksel de�erini 1 art�r
    h(indis) = h(indis) +1; 
  end
end
x=[0:255];
plot(x,h)