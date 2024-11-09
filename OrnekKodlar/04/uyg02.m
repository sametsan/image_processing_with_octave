% Histogram hesabı
I=imread('C:\octave\resimler\gri_resimler\image1.tif');
[sat,sut]=size(I);
Hist=zeros(1,256); % 

for x=1:sat
  for y=1:sut
                   %piksel  % indis
    indis =1+I(x,y);% 0-255 -> 1-256    
    % ilgili piksel adedini 1 artır
    Hist(indis)=Hist(indis)+1;   
  end 
end

X=[0:255];
%plot(X,Hist)
bar(X,Hist)
% ekrana sütun olarak yazdır
[X' Hist']

