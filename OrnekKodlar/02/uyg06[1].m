clear all
% g�r�nt�y� oku
%R=imread('Penguins.jpg');
R=imread('C:\octave\resimler\gri_resimler\rice.png');
% g�r�nt� boyutlar�
[sat,sut,r]=size(R)

D= uint8(zeros(sat,sut,3) ) ;
% resmin ortas�na dikd�rtgen
teta=pi/6;% 30 derece
x0=sut/2;
y0=sat/2;

for x=1:sat
  for y=1:sut
   xr=cos(teta)*(x-x0)-sin(teta)*(y-y0)+x0;
   yr=sin(teta)*(x-x0)+cos(teta)*(y-y0)+y0;
   
   if (xr>=1)&&(xr<=sat)&& (yr>=1)&&(yr<=sut)
      D(x,y)=R(xr,yr);
   end
   
  end
end
% g�r�nt�le
imshow(Gri)



