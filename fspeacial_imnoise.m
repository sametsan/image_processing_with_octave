
i=imread("c:/octave/resimler/peppers512.tiff");

figure(1);imshow(i);title("Orjinal");

in = imnoise(i,"gaussian",0,0.01);
figure(2);imshow(in);title("Gürültülü gaussian 0 0.01");

% görüntüdeki bozulma mikatarı hesapla
 hataG=mae2(i,in)
 
 w=fspecial('average',7); % katsayılar matrisi
 o=imfilter(in,w);
 figure(3);imshow(o);title("Gürültülü filtre");
 %orjinal ile filtrelenmiş arasındaki fark
 hataF=mae2(i,o)
 