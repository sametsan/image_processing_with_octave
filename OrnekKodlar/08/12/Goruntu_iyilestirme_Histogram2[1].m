f= imread('rice.png');
hnorm = imhist(f)./numel(f);
cdf = cumsum(hnorm);
x = linspace(0, 1, 256); 

%grafik çizim iþlemler
 plot(x, cdf,'linewidth',3)  
axis([0 1 0 1])  
set(gca, 'xtick', 0:.2:1)
set(gca, 'ytick', 0:.2:1)
xlabel('Input intensity values', 'fontsize', 9)
ylabel('Output intensity values', 'fontsize', 9)
title( 'Transformation function', 'fontsize', 9)


 