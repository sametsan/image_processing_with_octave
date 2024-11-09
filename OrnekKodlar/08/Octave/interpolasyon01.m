
% interpolation

Res1=imread('Koala256.jpg');
[sat,sut,renk]=size(Res1);

Res2=uint8(255*zeros(sat,sut,renk));


for i=1:sat
  for j=1:sut    
  
    Res2(i,j,1)= Res1(i,sut-j+1,1);% uint8( 255*rand() );
    Res2(i,j,2)= Res1(i,sut-j+1,2);%uint8( 255*rand() );
    Res2(i,j,3)= Res1(i,sut-j+1,3);%uint8( 255*rand() ); 
    
  end
end

figure(1);imshow(Res1);
figure(2);imshow(Res2);