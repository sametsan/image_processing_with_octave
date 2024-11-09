Res1=imread('C:\Users\abc\Desktop\mekatronik10102014\resimler\peppers.tif');


%imrotate (IMGPRE, THETA, METHOD, BBOX, EXTRAPVAL)
THETA=45;
Res2=imrotate(Res1,THETA,'nearest','crop',0);

imshow(Res2)
