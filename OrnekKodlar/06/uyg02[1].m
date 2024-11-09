I=imread('C:\octave\resimler\gri_resimler\rice.png');

[sat,sut]=size(I);
O=uint8( zeros(sat,sut) );

A=50;
B=130;

for x=1:sat
  for y=1:sut
  
    if  I(x,y)<A
      O(x,y)=0;
    elseif I(x,y)<=B
      O(x,y)=255;
    else
      O(x,y)=0;
    end
    
    %if (I(x,y)>=A)&&((I(x,y)<=B))
    %    O(x,y)=255;  
    %else
    %    O(x,y)=0;
    %end  
    
  end
end

subplot(121);imshow(I)
subplot(122);imshow(O)