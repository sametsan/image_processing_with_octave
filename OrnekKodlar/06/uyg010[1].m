I=imread('C:\octave\resimler\textures\1.5.01.tiff');
[sat,sut]=size(I);
O=uint8(zeros(sat,sut));


N=sat*sut; % piksel adedi
H=imhist(I);
PMF= double(H)/N;
CDF=zeros(1,length(PMF));
CDF=cumsum(PMF);
YeniSeviye=round(CDF*255);

for x=1:sat
  for y=1:sut  
    O(x,y)=YeniSeviye(I(x,y)+1);
  end
end

%------------------------
subplot(221); imshow(I);
subplot(222); imhist(I); 

subplot(223); imshow(O);
subplot(224); imhist(O);







