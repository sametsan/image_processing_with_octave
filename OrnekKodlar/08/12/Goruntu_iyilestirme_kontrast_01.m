
function kontrast_iyilestirme
% Contrast enhancement

Im1= imread('rice.png');
Im2= double( Im1); % 0-1 arasýna ölçekle

%Im3= 255/log(2)*log(1+ Im2/255 );

Im3= 255/log(256)*log(1+ Im2 );


Im4= uint8(Im3);
imshow(Im4);

end

