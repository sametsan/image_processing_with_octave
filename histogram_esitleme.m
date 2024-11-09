
function anadosya
i= imread('C:/octave/resimler/gri_resimler/image1.tif');


o=histesitle(i);


subplot(121);imshow(i);
subplot(122);imshow(o);
end

%histeq fonksiyonuda var .. onu da gördük

function B=histesitle(A)
[sat,sut]=size(A);
Level=256;

h=hist(A(:),Level);

M=sat*sut;
pmf=h/M;

cdf=zeros(1,8);

cdf(1)=pmf(1);

for i=2:Level
  cdf(i)=cdf(i-1)+pmf(i);
end

Map = floor(cdf*(Level-1));

for x=1:sat
  for y=1:sut
    B(x,y) = Map(A(x,y)+1);
  end
end

end
