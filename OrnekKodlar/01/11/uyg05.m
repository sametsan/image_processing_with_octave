Res1=imread('C:\Users\abc\Desktop\mekatronik10102014\resimler\peppers.tif');
[sat,sut,r]=size(Res1);
% yeni boyutlar
ysat=512;
ysut=384;
% boþ resim
Res2=uint8(zeros(ysat,ysut,3));
for i=1:ysat
  for j=1:ysut
      iy= ceil(i*double(sat)/ysat);
      jy= ceil(j*double(sut)/ysut);
      Res2(i,j,:)=Res1(iy,jy,:);
  end
end
imshow(Res2)
imwrite(Res2,'olceklenmis.jpg');