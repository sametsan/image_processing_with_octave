

I= double( imread('C:\octave\resimler\gri_resimler\rice.png') );
[sat,sut]=size(I);
%O=uint8( zeros(sat,sut) )
O=zeros(sat,sut,"uint8"); 
%ortalamaalan filtre - average
W=[1/9 1/9 1/9;
   1/9 1/9 1/9;
   1/9 1/9 1/9];
%W=[1 1 1;
%   1 1 1;
%   1 1 1]/9;
%W=ones(3,3)/9;
      
for x=2:(sat-1)
  for y=2:(sut-1)
    %-----------------
    O(x,y)=uint8(...
           W(1,1)*I(x-1,y-1) +W(1,2)*I(x-1,y) +W(1,3)*I(x-1,y+1) ...
          +W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) ...
          +W(3,1)*I(x+1,y-1) +W(3,2)*I(x+1,y) +W(3,3)*I(x+1,y+1) );    
    %------------------
  end
end


% Kenarlar� filtrele
%alt kenar� filtrele (son sat�r)
W=[1/6 1/6 1/6;
   1/6 1/6 1/6;
   1/6 1/6 1/6];

x=1; %ilk sat�r
  for y=2:(sut-1)
    %-----------------
    O(x,y)=uint8(... �st sat�r ihmal edildi % W(1,1)*I(x-1,y-1) +W(1,2)*I(x-1,y) +W(1,3)*I(x-1,y+1) ...
          +W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) ...
          +W(3,1)*I(x+1,y-1) +W(3,2)*I(x+1,y) +W(3,3)*I(x+1,y+1) );    
    %------------------
  end

  x=sat; % son sat�r
  for y=2:(sut-1)
    %-----------------
    O(x,y)=uint8(... �st sat�r ihmal edildi % 
           W(1,1)*I(x-1,y-1) +W(1,2)*I(x-1,y) +W(1,3)*I(x-1,y+1) ...
          +W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) );% ...
          %+W(3,1)*I(x+1,y-1) +W(3,2)*I(x+1,y) +W(3,3)*I(x+1,y+1) );    
    %------------------
  end

  
%--
y=1; %ilk s�tun
for x=2:(sat-1)  
    %-----------------
    O(x,y)=uint8(...
           +W(1,2)*I(x-1,y) +W(1,3)*I(x-1,y+1) ...
           +W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) ...
           +W(3,2)*I(x+1,y) +W(3,3)*I(x+1,y+1) );    
    %------------------
end 
  
 y=sut; %son s�tun
for x=2:(sat-1)
    %-----------------
    O(x,y)=uint8(...
           W(1,1)*I(x-1,y-1) +W(1,2)*I(x-1,y)  ...
          +W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y) ...
          +W(3,1)*I(x+1,y-1) +W(3,2)*I(x+1,y) );    
    %------------------
end

% K��e noktalar�
W=[1/4 1/4 1/4;
   1/4 1/4 1/4;
   1/4 1/4 1/4]; %

%�st sol k��e
x=1;y=1;
 O(x,y)= uint8(W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) ...
         +W(3,2)*I(x+1,y)+W(3,3)*I(x+1,y+1) );    
    %------------------

%�st sa� k��e
x=1;y=sut;
  O(x,y)= uint8(W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y)  ...
         +W(3,1)*I(x+1,y-1) +W(3,2)*I(x+1,y)  );    
%alt sol k��e
x=sat;y=1;
O(x,y)= uint8( W(1,2)*I(x-1,y) +W(1,3)*I(x-1,y+1) ...
        +W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) );    

%alt sa� k��e
x=sat;y=sut;
O(x,y)=   uint8( W(1,1)*I(x-1,y-1) +W(1,2)*I(x-1,y)  ...
          +W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y) );    

figure(1);imshow(uint8(I))
figure(2);imshow(O)
