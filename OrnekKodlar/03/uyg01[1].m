

I=imread('C:\octave\resimler\gri_resimler\image1.tif');
subplot(221);imshow(I);
subplot(223);imhist(I);

O=histeq(I);

subplot(222);imshow(O)
subplot(224);imhist(O);