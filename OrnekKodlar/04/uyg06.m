
% Histogram e�itleme
% 5x5lik matris �zerinde
function anadosya
A= uint8( round(7*rand(5,5)) )

B=histesitle(A)

end


function B=histesitle(A)
[sat,sut]=size(A);
B= uint8( zeros(sat,sut) );
Levels=8; % 8 seviyeli (3bitlik)
x=[0:7]
h=hist(A(:),8)
%Probablity Mass Function - slayta bak!!!
M=sat*sut;
PMF= h/M
%CDF k�m�latif toplam
CDF=zeros(1,Levels);
CDF(1)=PMF(1);
for i=2:Levels
  CDF(i)= CDF(i-1)+PMF(i);
end

CDF
%Map=round( CDF*(Levels-1) )
Map=floor( CDF*(Levels-1) )

% yeni seviye de�erleri yaz
for x=1:sat
  for y=1:sut  
    B(x,y) = Map(A(x,y)+1); % indisler 1-8 aral���nda, pikseller 0-7 aral���nda
  end  
end

end
