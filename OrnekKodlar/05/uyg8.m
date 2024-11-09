% Histogram eþitleme
L=256;
%I= uint8((L-1)*rand(5,5))
I=imread('C:\octave\resimler\textures\1.3.12.tiff'); 
v=I(:);% matris->vektör
h=hist(v,L);
[sat,sut]=size(I);% goruntu boyutlarý
M=sat*sut;
% iþlenmiþ görüntü için yer ayýr
O= uint8( zeros(sat,sut) );
%slayatta detaylarý var
PMF=h/M;
CDF=zeros(1,length(PMF));
CDF(1)=PMF(1);
for i=2:length(PMF)
  CDF(i)=CDF(i-1)+PMF(i);
end
yeniSeyiveler= floor( CDF*(L-1) )
for x=1:sat
  for y=1:sut  
    O(x,y)= yeniSeyiveler( I(x,y) +1 );
  end
end
subplot(221);imshow(I)
subplot(223);imhist(I)
subplot(222);imshow(O)
subplot(224);imhist(O)

