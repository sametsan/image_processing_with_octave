
function hata=mae2(i,in)

%MAE : mean absolute eror / iki görüntü arasındaki hatayı hesaplar

[sat,sut,r]=size(i);
i=double(i);
in=double(in);
t=0;

t=sum(sum(sum(abs(i-in))));  % 3 boyutlu (rgb) olduğu için 3 tane sum 


 hata=t/(sat*sut*3);
 end