% Resmi oku
Resim1=imread('C:\Users\Public\Pictures\Sample Pictures\Penguins.jpg');
%b�lgeye ait koordinatlar
xb=40;
yb=610;
ysat=140;
ysut=225;
% ��k�� i�in bo� resim
Resim2= uint8(zeros(140,225,3));
% resmi kopyala
for i=1:ysat
  for j=1:ysut
    Resim2(i,j,1)= Resim1(i+xb-1,j+yb-1,1);
    Resim2(i,j,2)= Resim1(i+xb-1,j+yb-1,2);
    Resim2(i,j,3)= Resim1(i+xb-1,j+yb-1,3);
  end
end

imshow(Resim2);
