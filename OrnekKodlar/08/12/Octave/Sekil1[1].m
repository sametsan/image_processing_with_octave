

% interpolation

Res1=imread('Koala256.jpg');
[sat,sut,renk]=size(Res1);

Res2=uint8(zeros(2*sat,2*sut,3));

for i=1:2*sat
  for j=1:2*sut     
  

          Res2(i,j,:)=Res1(round(i/2),round(j/2),:);   

  end
end

figure(1);imshow(Res1);
figure(2);imshow(Res2);
imwrite(Res2,"scaled.jpg");
