function Resim2=goruntuKirp(Resim1,xb,yb,ysat,ysut)
[sat,sut,r]=size(Resim1);

if ((ysat+xb)>sat)
  disp('goruntu sinirlari disina çýkýldý')
end
% çýkýþ için boþ resim
Resim2= uint8(zeros(ysat,ysut,3));
% resmi kopyala
for i=1:ysat
  for j=1:ysut
    %Resim2(i,j,1)= Resim1(i+xb-1,j+yb-1,1);
    %Resim2(i,j,2)= Resim1(i+xb-1,j+yb-1,2);
    %Resim2(i,j,3)= Resim1(i+xb-1,j+yb-1,3);
    
    Resim2(i,j,:)= Resim1(i+xb-1,j+yb-1,:);
  end
end

end