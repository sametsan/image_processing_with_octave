
function matris_hist

sat=4;
sut=4;
A= uint8( round(7*rand(sat,sut)) )
A(:)

L=[0:7]

H=hist(A(:),L)

PMF=H/(sat*sut)

C=cumsum(PMF)



figure(1);bar(H)
