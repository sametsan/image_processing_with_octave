function son=goruntuKirp(resim,x,y,genislik,yukseklik)

yeni= uint8(zeros(genislik,yukseklik,3));


for i=1:genislik
  for j=1:yukseklik
  
  yeni(i,j,:) = resim(x+i,y+j,:);
  
  end

end


son=yeni;
end