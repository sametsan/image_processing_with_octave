

I= double( imread('C:\octave\resimler\gri_resimler\rice.png') );
[sat,sut]=size(I);
%O=uint8( zeros(sat,sut) )
O=zeros(sat,sut,"uint8"); 
%ortalamaalan filtre - average
%W=[1/9 1/9 1/9;
%   1/9 1/9 1/9;
%   1/9 1/9 1/9];
   
 W=ones(5,5)/25
 
 [n,m]=size(W);   
 % filtre boyutu 3x3, 5x5, 7x7,9x9, ... 
 %boyutu tek sayý olan filtreler için
 k=(n-1)/2; 
 
% filtrelemeyi gerçekleþtir
X=(1+k):(sat-k);
Y=(1+k):(sut-k);
for x=X
  for y=Y
    %-----------------
    pix=0;
    for i=-k:k
      for j=-k:k      
        pix = pix + W(i+k+1,j+k+1)*I(x+i,y+j);
      end
    end 
    %filtrelenmiþ pikseli çýkýþ görüntüsünde yerine yaz
    O(x,y)=uint8(pix);
    %------------------
  end
end
figure(1);imshow(uint8(I))

figure(3);imshow(O)


