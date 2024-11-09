

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


% Kenarlarý filtrele
%alt kenarý filtrele (son satýr)
W=[1/6 1/6 1/6;
   1/6 1/6 1/6;
   1/6 1/6 1/6];

x=1; %ilk satýr
  for y=2:(sut-1)
    %-----------------
    O(x,y)=uint8(... üst satýr ihmal edildi % W(1,1)*I(x-1,y-1) +W(1,2)*I(x-1,y) +W(1,3)*I(x-1,y+1) ...
          +W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) ...
          +W(3,1)*I(x+1,y-1) +W(3,2)*I(x+1,y) +W(3,3)*I(x+1,y+1) );    
    %------------------
  end

  x=sat; % son satýr
  for y=2:(sut-1)
    %-----------------
    O(x,y)=uint8(... üst satýr ihmal edildi % 
           W(1,1)*I(x-1,y-1) +W(1,2)*I(x-1,y) +W(1,3)*I(x-1,y+1) ...
          +W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) );% ...
          %+W(3,1)*I(x+1,y-1) +W(3,2)*I(x+1,y) +W(3,3)*I(x+1,y+1) );    
    %------------------
  end

  
%--
y=1; %ilk sütun
for x=2:(sat-1)  
    %-----------------
    O(x,y)=uint8(...
           +W(1,2)*I(x-1,y) +W(1,3)*I(x-1,y+1) ...
           +W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) ...
           +W(3,2)*I(x+1,y) +W(3,3)*I(x+1,y+1) );    
    %------------------
end 
  
 y=sut; %son sütun
for x=2:(sat-1)
    %-----------------
    O(x,y)=uint8(...
           W(1,1)*I(x-1,y-1) +W(1,2)*I(x-1,y)  ...
          +W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y) ...
          +W(3,1)*I(x+1,y-1) +W(3,2)*I(x+1,y) );    
    %------------------
end

% Köþe noktalarý
W=[1/4 1/4 1/4;
   1/4 1/4 1/4;
   1/4 1/4 1/4]; %

%üst sol köþe
x=1;y=1;
 O(x,y)= uint8(W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) ...
         +W(3,2)*I(x+1,y)+W(3,3)*I(x+1,y+1) );    
    %------------------

%üst sað köþe
x=1;y=sut;
  O(x,y)= uint8(W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y)  ...
         +W(3,1)*I(x+1,y-1) +W(3,2)*I(x+1,y)  );    
%alt sol köþe
x=sat;y=1;
O(x,y)= uint8( W(1,2)*I(x-1,y) +W(1,3)*I(x-1,y+1) ...
        +W(2,2)*I(x,  y) +W(2,3)*I(x,  y+1) );    

%alt sað köþe
x=sat;y=sut;
O(x,y)=   uint8( W(1,1)*I(x-1,y-1) +W(1,2)*I(x-1,y)  ...
          +W(2,1)*I(x,  y-1) +W(2,2)*I(x,  y) );    

figure(1);imshow(uint8(I))
figure(2);imshow(O)
