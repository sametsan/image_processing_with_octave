function anaprog
% G�r�nt�n�n histogram�n� hesaplar
I=imread('C:\octave\resimler\textures\1.3.12.tiff'); 

h=histogram(I);
x=[0:255];
bar(x,h)
end
function h=histogram(I)
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

end