

i=imread('C:/octave/resimler/gri_resimler/rice.png');

[sat,sut] = size(i);

o=zeros(sat,sut,'uint8');

w=[1/9 2/9 1/9;2/9 3/9 2/9;1/9 2/9 1/9];
%w=ones(3,3)/9;


%imfilter(i,w)
for x=2:(sat-1)
  for y=2:(sut-1)
  
  o(x,y)=uint8(w(1,1)*i(x-1,y-1)+w(1,2)*i(x-1,y)+w(1,3)*i(x-1,y+1)...
        +w(2,1)*i(x,y-1)+w(2,2)*i(x,y)+w(2,3)*i(x,y+1)...
        +w(3,1)*i(x+1,y-1)+w(3,2)*i(x+1,y)+w(3,3)*i(x+1,y+1));
  
  
  
  end
 end
 

 
 
 

figure(1);imshow(i);
figure(2);imshow(o);