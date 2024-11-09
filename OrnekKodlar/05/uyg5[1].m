% Görüntünün histogramýný hesaplar
I=imread('C:\octave\resimler\textures\1.3.12.tiff'); 
h=imhist(I,256)
%x=[0:255];
%bar(x,h)

imhist(I,256); %grafiði fonk. çizer

