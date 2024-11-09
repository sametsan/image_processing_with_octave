
function deneme
I= imread('C:\octave\resimler\gri_resimler\rice.png') ;
%ortalama alan filtre - average
 
 
%W=ones(5,5)/25;%5x5
W=ones(3,3)/9;%3x3
 %
O=imfilter(I,W);
figure(1);
subplot(121);imshow(I)
subplot(122);imshow(O)

Ib=cevir(I);
Ob=cevir(O);

figure(2);
subplot(121);imshow(Ib)
subplot(122);imshow(Ob)

end

function B=cevir(A)
m=127;
[sat,sut]=size(A);
B=A;% çýkýþ için yer ayýr
for x=1:sat
  for y=1:sut
    if A(x,y)<m
      B(x,y)=0;
    else
      B(x,y)=255;
    end
  end
end



end