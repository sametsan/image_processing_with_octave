
i=imread("c:/octave/resimler/peppers512.tiff");

figure(1);imshow(i);title("Orjinal");

in = imnoise(i,"gaussian",0,0.01);
figure(2);imshow(in);title("G�r�lt�l� gaussian 0 0.01");

% g�r�nt�deki bozulma mikatar� hesapla
 hataG=mae2(i,in)
 
 w=fspecial('average',7); % katsay�lar matrisi
 o=imfilter(in,w);
 figure(3);imshow(o);title("G�r�lt�l� filtre");
 %orjinal ile filtrelenmi� aras�ndaki fark
 hataF=mae2(i,o)
 