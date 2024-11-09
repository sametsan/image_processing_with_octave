
function kontrast_iyilestirme
Im1= imread('rice.png');
Im2= isaret( double( Im1)/255 );
imshow( uint8( 255*Im2) );
end



function islenmis=isaret(orjinal)
[sat,sut]=size(orjinal)

a=5;
for i=1:sat
  for j=1:sut    
    r= orjinal(i,j);     
    islenmis(i,j)= r^a;  
    
  end
end

end