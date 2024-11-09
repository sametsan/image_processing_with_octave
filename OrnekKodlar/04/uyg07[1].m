
% Histogram e�itleme
function anadosya

I=imread('C:\octave\resimler\gri_resimler\image1.tif');

%kontrast ayarlama  ile iyile�tirme
O1=uint8( 255*imadjust( double(I)/255) );

%histogram e�itleme ile iyile�tirme
O2=histesitle(I);


subplot(231);imshow(I); title('orjinal resim');
subplot(232);imshow(O1);title('kontrast ayar�');
subplot(233);imshow(O2);title('histogram e�itleme');

subplot(234);imhist(I);
subplot(235);imhist(O1)
subplot(236);imhist(O2)

end


function B=histesitle(A)
[sat,sut]=size(A);
B= uint8( zeros(sat,sut) );
Levels=256; % 8 seviyeli (3bitlik)
%x=[0:7]
h=hist(A(:),Levels);
%Probablity Mass Function - slayta bak!!!
M=sat*sut;
PMF= h/M;
%CDF k�m�latif toplam
CDF=zeros(1,Levels);
CDF(1)=PMF(1);
for i=2:Levels
  CDF(i)= CDF(i-1)+PMF(i);
end

%Map=round( CDF*(Levels-1) )
Map=floor( CDF*(Levels-1) );

% yeni seviye de�erleri yaz
for x=1:sat
  for y=1:sut  
    B(x,y) = Map(A(x,y)+1); % indisler 1-8 aral���nda, pikseller 0-7 aral���nda
  end  
end

end
