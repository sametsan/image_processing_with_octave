
% Histogram e�itleme

L=8;
I= uint8((L-1)*rand(5,5))

v=I(:);% matris->vekt�r
h=hist(v,8)
[sat,sut]=size(I);% goruntu boyutlar�
M=sat*sut
% i�lenmi� g�r�nt� i�in yer ay�r
O= uint8( zeros(sat,sut) )
%slayatta detaylar� var
PMF=h/M
CDF=zeros(1,length(PMF));
CDF(1)=PMF(1);
%CDF(2)=CDF(1)+PMF(2)
%CDF(3)=CDF(2)+PMF(3)
%CDF(4)=CDF(3)+PMF(4)
%...
for i=2:length(PMF)
  CDF(i)=CDF(i-1)+PMF(i);
end
CDF
yeniSeyiveler= floor( CDF*(L-1) )
for x=1:sat
  for y=1:sut  
    O(x,y)= yeniSeyiveler( I(x,y) +1 );
  end
end

I
O
