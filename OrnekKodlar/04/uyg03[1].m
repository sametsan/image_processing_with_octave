

% Histogram hesabý
I=imread('C:\octave\resimler\gri_resimler\image1.tif');

[sat,sut]=size(I)

pikselAdet=sat*sut

imhist(I); %axis([ 0 255  0 2000])

%H=hist(I);