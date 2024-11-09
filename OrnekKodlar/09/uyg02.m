function test
I=imread('C:\octave\resimler\gri_resimler\rice.png');
%W=[1 1 1;
%   1 1 1;
%   1 1 1]/9;   
W=[1 1 1 1 1;
   1 1 1 1 1;
   1 1 1 1 1;
   1 1 1 1 1;
   1 1 1 1 1]/25; 
   
O=filtrele(I,W); 
  
figure(1)
subplot(121);imshow(I)
subplot(122);imshow(O)

% görüntü eþikleme S/B
Isb=cevirSB(I);
Osb=cevirSB(O);

figure(2)
subplot(121);imshow(Isb)
subplot(122);imshow(Osb)
end

function O=filtrele(I,W)
[sat,sut]=size(I);
O=zeros(sat,sut,"uint8");
[m,n]=size(W);
k=(m-1)/2; %3x3
for x=(1+k):(sat-k)
  for y=(1+k):(sut-k) 
     piksel=0;     
     for i=-k:k
      for j=-k:k
          piksel=piksel+W(i+k+1,j+k+1)*I(x+i,y+j);
      end
     end       
    O(x,y)=piksel;  
  end
end   
end

function O=cevirSB(I)
[sat,sut]=size(I);
m=127;
for x=1:sat
  for y=1:sut
    if I(x,y)<m
      O(x,y)=0;
    else
      O(x,y)=255;
    end  
  end
end

end
