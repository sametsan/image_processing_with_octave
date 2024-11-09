
I=imread('C:\octave\resimler\gri_resimler\rice.png');
[sat,sut]=size(I);
%O=uint8( zeros(sat,sut) ); //veya
O=zeros(sat,sut,"uint8");
%W=[1 1 1;
%   1 1 1;
%   1 1 1]/9;
   
W=[ 1 1 1 1 1;
   1 1 1 1 1;
   1 1 1 1 1;
   1 1 1 1 1;
   1 1 1 1 1]/25;
   
%W=ones(3,3)/9
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
   

subplot(121);imshow(I)
subplot(122);imshow(O)