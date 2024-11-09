clc
clear all
i= imread('C:/octave/resimler/gri_resimler/image1.tif');

[sat,sut,r]=size(i);

Hist=zeros(1,256);

for x=1:sat
  for y=1:sut
  
  indis=i(x,y)+1; % 0-255 -> 1-256
  
  Hist(indis)=Hist(indis)+1;
  
  
  
  end
  end
  
bar([0:255],Hist);