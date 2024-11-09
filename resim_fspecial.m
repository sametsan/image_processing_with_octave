
w=fspecial("average",5);

figure(1);stem3(w)

w=fspecial("gaussian",5);

figure(2);stem3(w)


w=fspecial("gaussian",5,3);

figure(3);stem3(w)