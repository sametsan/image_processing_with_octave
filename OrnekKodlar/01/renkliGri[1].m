function GriResim=renkliGri(RenkliResim)
[sat,sut,r]=size(RenkliResim);
%Sonuç için yer ayýr (boþ resim)
GriResim= uint8( zeros(sat,sut) );
%resimin piksellerini oku
for i=1:sat
  for j=1:sut
     R=RenkliResim(i,j,1);
     G=RenkliResim(i,j,2);
     B=RenkliResim(i,j,3);     
     GriResim(i,j)= uint8( 0.30*R + 0.59*G + 0.11*B );
  end
end
end


