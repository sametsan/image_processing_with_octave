
% Histogram eþitleme
function anadosya

I=imread('C:\octave\resimler\gri_resimler\image1.tif');

%kontrast ayarlama  ile iyileþtirme
O1=uint8( 255*imadjust( double(I)/255) );

%histogram eþitleme ile iyileþtirme
O2=histesitle(I);


subplot(231);imshow(I); title('orjinal resim');
subplot(232);imshow(O1);title('kontrast ayarý');
subplot(233);imshow(O2);title('histogram eþitleme');

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
%CDF kümülatif toplam
CDF=zeros(1,Levels);
CDF(1)=PMF(1);
for i=2:Levels
  CDF(i)= CDF(i-1)+PMF(i);
end

%Map=round( CDF*(Levels-1) )
Map=floor( CDF*(Levels-1) );

% yeni seviye deðerleri yaz
for x=1:sat
  for y=1:sut  
    B(x,y) = Map(A(x,y)+1); % indisler 1-8 aralýðýnda, pikseller 0-7 aralýðýnda
  end  
end

end
