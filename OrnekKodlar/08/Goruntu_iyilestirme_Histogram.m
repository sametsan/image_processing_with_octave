
function kontrast_iyilestirme
Im1= imread('rice.png');
figure(1);hist(Im1)
figure(2);imshow(Im1);

Im2=uint8(255*histeq(Im1,256));
figure(3);hist(Im2)
figure(4);imshow(Im2);
%Im2= isaret( double( Im1)/255 );
%imshow( uint8( 255*Im2) );

end


