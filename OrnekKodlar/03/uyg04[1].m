

I= double( imread('C:\octave\resimler\gri_resimler\rice.png') );
[sat,sut]=size(I);
%O=uint8( zeros(sat,sut) )
O=zeros(sat,sut,"uint8"); 
%ortalamaalan filtre - average
W=[1/9 1/9 1/9;
   1/9 1/9 1/9;
   1/9 1/9 1/9];
% filtrelemeyi gerçekleþtir
for x=2:(sat-1)
  for y=2:(sut-1)
    %-----------------
    pix=0;
    for i=-1:1
      for j=-1:1      
        pix = pix + W(i+2,j+2)*I(x+i,y+j);
      end
    end 
    %filtrelenmiþ pikseli çýkýþ görüntüsünde yerine yaz
    O(x,y)=uint8(pix);
    %------------------
  end
end
figure(1);imshow(uint8(I))
figure(2);imshow(O)


