function Resim1=dikdortgenEkle(Resim1,xb,yb,ysat,ysut)
[sat,sut,r]=size(Resim1);
if ((ysat+xb)>sat)
  disp('goruntu sinirlari disina ��k�ld�')
end

% iki satir �izdir
for i=yb:(yb+ysut)
  % 1. sat�r
  Resim1(xb,i,1)=255;
  Resim1(xb,i,2)=0;
  Resim1(xb,i,3)=0;
  % 2. sat�r
  Resim1(xb+ysat,i,1)=255;
  Resim1(xb+ysat,i,2)=0;
  Resim1(xb+ysat,i,3)=0;  
end

for i=xb:(xb+ysat)
  % 1. s�tun
  Resim1(i,yb,1)=255;
  Resim1(i,yb,2)=0;
  Resim1(i,yb,3)=0;  
  % 1. s�tun
  Resim1(i,yb+ysut,1)=255;
  Resim1(i,yb+ysut,2)=0;
  Resim1(i,yb+ysut,3)=0;
end


end