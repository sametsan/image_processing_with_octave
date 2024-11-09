
function gri=renkli2Gri(resim)
[satir,sutun,p]=size(resim)


gri=uint8(zeros(satir,sutun))


  for i=1:satir

   for j=1:sutun


      r=resim(i,j,1);
      g=resim(i,j,2);
     b=resim(i,j,3);
  
     gri(i,j)=uint8(r*0.3+g*0.6+b*0.1);

   end
  end


end