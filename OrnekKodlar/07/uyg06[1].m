
I=imread('C:\octave\resimler\textures\1.5.01.tiff');
[sat,sut]=size(I);
H=zeros(1,256);

for x=1:sat
  for y=1:sut
    H( I(x,y)+1 )=H( I(x,y)+1 )+1 ;
  end
end

yatay=[0:255];
bar(yatay,H,'hist')


