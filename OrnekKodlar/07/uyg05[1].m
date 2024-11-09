
%I=imread('C:\octave\resimler\textures\1.5.01.tiff');
%[sat,sut]=size(I);

I=uint8(floor( rand(5,5)*8) )
[sat,sut]=size(I)
H=zeros(1,8)

for x=1:sat
  for y=1:sut
    %I(x,y)
    H( I(x,y)+1 )=H( I(x,y)+1 )+1 ;
    %pause
  end
end

yatay=[0:7];
bar(yatay,H)

