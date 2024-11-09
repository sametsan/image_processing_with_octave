function test
I=imread('C:\octave\resimler\gri_resimler\rice.png');
W=[1 1 1;
   1 1 1;
   1 1 1]/9;   
%W=[1 1 1 1 1;
%   1 1 1 1 1;
%   1 1 1 1 1;
%   1 1 1 1 1;
%   1 1 1 1 1]/25; 

   O=imfilter(I,W); 
  
figure(1)
subplot(121);imshow(I)
subplot(122);imshow(O)

% g�r�nt� e�ikleme S/B
Isb=cevirSB(I);
Osb=cevirSB(O);

figure(2)
subplot(121);imshow(Isb)
subplot(122);imshow(Osb)
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
