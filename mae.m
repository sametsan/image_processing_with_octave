
function hata=mae(i,in)

[sat,sut,r]=size(i);
i=double(i);
in=double(in);
t=0;

for x=1:sat
  for y=1:sut
  
  t=t+abs(i(x,y,1)-in(x,y,1))...
  +abs(i(x,y,2)-in(x,y,2))...
  +abs(i(x,y,3)-in(x,y,3));
  
  
  end
 end
 hata=t/(sat*sut*3);
 end