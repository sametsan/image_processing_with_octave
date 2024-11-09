Res1=imread('C:\Users\abc\Desktop\mekatronik10102014\resimler\peppers.tif');
[sat,sut,r]=size(Res1);
% resmi orta noktasýna göre döndur
x0= round(sat/2);
y0= round(sut/2);
% açý
teta=pi/4; % 45 derece
% boþ resim boyutlarý orjinal resim ile ayný
Res2=uint8(zeros(sat,sut,3));
for x1=1:sat
  for y1=1:sut
        x2= floor(cos(teta)*(x1-x0)-sin(teta)*(y1-y0)+x0);
      y2= floor(sin(teta)*(x1-x0)+cos(teta)*(y1-y0)+y0);
            if (x2>=1)&&(x2<=sat)&&(y2>=1)&&(y2<=sut)
          Res2(x1,y1,:)=uint8(Res1(x2,y2,:));
     end   
      
  end
end
imshow(Res2)
imwrite(Res2,'dondurulmus.jpg');