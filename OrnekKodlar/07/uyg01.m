
Res1=imread('C:\octave\resimler\house.tiff');

tic
Res2=imresize(Res1,[512 380],'linear');
tlinear=toc

tic
Res2=imresize(Res1,[512 380],'cubic');
tcubic=toc

imshow(Res2)
