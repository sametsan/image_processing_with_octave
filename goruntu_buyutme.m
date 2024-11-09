
i=imread("c:/octave/resimler/house.tiff");

[satir,sutun,renk] = size(i);

yeni_satir = satir*2;
yeni_sutun = sutun*2;

h=uint8(zeros(yeni_satir,yeni_sutun,renk));

for x=1:2:yeni_satir
  for y=1:2:yeni_sutun
  nx=round(x/2);
  ny=round(y/2);
  
  h(x,y,:)=i(nx,ny,:);

  end
 end
 
 for x=1:yeni_satir
  for y=2:2:yeni_sutun-1

  
  h(x,y,1)=round((h(x,y+1,1)+h(x,y-1,1))/2);
 h(x,y,2)=round((h(x,y+1,2)+h(x,y-1,2))/2);
  h(x,y,3)=round((h(x,y+1,3)+h(x,y-1,3))/2);
  
  
  end
 end
 
 for x=2:2:yeni_satir-1
  for y=1:2:yeni_sutun

  
  h(x,y,1)=round((h(x+1,y,1)+h(x-1,y,1))/2);
 h(x,y,2)=round((h(x+1,y,2)+h(x-1,y,2))/2);
  h(x,y,3)=round((h(x+1,y,3)+h(x-1,y,3))/2);
  
  
  end
 end
 
 
 imshow(h);
