function son=dortgenCiz(resim,x,y,genislik,yukseklik)


for i=y:(y+genislik)

  resim(x,i,1) =255;
 resim(x,i,2) =0;
  resim(x,i,3) =0;
  
    resim(x+yukseklik,i,1) =255;
 resim(x+yukseklik,i,2) =0;
  resim(x+yukseklik,i,3) =0;
  

end


for j=x:(x+yukseklik)

  resim(j,y,1) =255;
 resim(j,y,2) =0;
  resim(j,y,3) =0;
  
    resim(j,y+genislik,1) =255;
 resim(j,y+genislik,2) =0;
  resim(j,y+genislik,3) =0;
  

end



son=resim;
end