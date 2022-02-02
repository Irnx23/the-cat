%%imaqtool - Para ver que camaras hay conectadas y ver pre.
clc
clear all

    a = arduino('COM5');
    writeDigitalPin(a,'D2',0);
    writeDigitalPin(a,'D3',0);
    writeDigitalPin(a,'D4',0);
    writeDigitalPin(a,'D5',0);
    writeDigitalPin(a,'D6',0);
    writeDigitalPin(a,'D7',0);
    writeDigitalPin(a,'D8',0);
    writeDigitalPin(a,'D9',0);
    writeDigitalPin(a,'D10',0);

vid = videoinput('winvideo', 2, 'YUY2_160x120');
preview(vid);
pause(3);
i=getsnapshot(vid);
%i=imread('Sin titulo.png');
I = rgb2gray(i);
A=255-I;
B=im2bw(I);
%C=imfill(B,'holes');
f=bwlabel(B);
vislabels(f),title('Contar objetos');

g=regionprops(f,'FilledArea')
area_values=[g.FilledArea] %Lista de cantidad de area por objeto
%imshow(g);
idx=find((500<=area_values) & (area_values<=1100)) 
h=ismember(f,idx);

imshow(h);
[x,y]= size(h)


C1=0,C2=0,C3=0,C4=0,C5=0,C6=0,C7=0,C8=0,C9=0; %Conteo de blanco
O1=0,O2=0,O3=0,O4=0,O5=0,O6=0,O7=0,O8=0,O9=0; %Variable de ficha O
X1=0,X2=0,X3=0,X4=0,X5=0,X6=0,X7=0,X8=0,X9=0; %Variable de ficha X

%%%%%%%%%%%%% PRIMER CUADRO
 for y=26:1:57 %%% Se editara ya que se coloque la camara
   for x=11:1:39%%% Se editara ya que se coloque la camara
        if h(x,y) == uint8(1);
            C1=C1+1;
         
         end
    end
 end


%%%%%%%%%%%% SEGUNDO CUADRO
  for y=61:1:87 %%% Se editara ya que se coloque la camara
     for x=11:1:39 %%% Se editara ya que se coloque la camara
          if h(x,y) == uint8(1);
              C2=C2+1;
          end
  end
  end
  
%%%%%%%%%%%%TERCER CUADRO  
    for y=94:1:121 %%% Se editara ya que se coloque la camara
     for x=11:1:39 %%% Se editara ya que se coloque la camara
          if h(x,y) == uint8(1);
              C3=C3+1;
          end
  end
    end
    
        
%%%%%%%%%%%CUARTO CUADRO
    for y=26:1:57 %%% Se editara ya que se coloque la camara
     for x=45:1:73 %%% Se editara ya que se coloque la camara
          if h(x,y) == uint8(1);
              C4=C4+1;
          end
  end
    end
    
%%%%%%%%%%QUINTO CUADRO
    for y=61:1:87 %%% Se editara ya que se coloque la camara
     for x=45:1:73 %%% Se editara ya que se coloque la camara
          if h(x,y) == uint8(1);
              C5=C5+1;
          end
  end
    end
    
%%%%%%%%%%SEXTO CUADRO
    for y=94:1:121 %%% Se editara ya que se coloque la camara
     for x=45:1:73 %%% Se editara ya que se coloque la camara
          if h(x,y) == uint8(1);
              C6=C6+1;
          end
  end
    end
    
%%%%%%%% SEPTIMO CUADRO
     for y=26:1:57 %%% Se editara ya que se coloque la camara
     for x=79:1:108 %%% Se editara ya que se coloque la camara
          if h(x,y) == uint8(1);
              C7=C7+1;
          end
  end
     end
     
%%%%%%%%%%%%OCTAVO CUADRO     
        for y=61:1:87 %%% Se editara ya que se coloque la camara
     for x=79:1:108 %%% Se editara ya que se coloque la camara
          if h(x,y) == uint8(1);
              C8=C8+1;
          end
  end
        end
        
%%%%%%%%%%%%%NOVENO CUADRO
    for y=94:1:121 %%% Se editara ya que se coloque la camara
     for x=79:1:108 %%% Se editara ya que se coloque la camara
          if h(x,y) == uint8(1);
              C9=C9+1;
          end
  end
    end
  
    
%%%%%%%%%%%%%%%%%%%%%DECISIONES%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%%%PRIMER 
   if C1>=600
      disp('Cuadro 1 no hay nada');
   elseif C1>=200 && C1<500
      disp('Cuadro 1 CIRCULO');
      O1=O1+1;
    elseif C1<=60
     disp('Cuadro 1 EQUIS');
     X1=X1+1;
     
   end
  
%%%%%% SEGUNDO 
  if C2>=750
    disp('Cuadro 2 no hay nada');
  
  elseif C2>=200 && C2<500
     disp('Cuadro 2 CIRCULO');
     O2=O2+1;
         
  elseif C2<=50
      disp('Cuadro 2 EQUIS');
      X2=X2+1;
 end
         
%%%%%%% TERCERO
if C3>=600
     disp('Cuadro 3 no hay nada');
         
  elseif C3>=200 && C3<500
     disp('Cuadro 3 CIRCULO');
     O3=O3+1;

elseif C3<=50
     disp('Cuadro 3 EQUIS');
     X3=X3+1;

 end
 
 %%% CUARTO
   if C4>=600
      disp('Cuadro 4 no hay nada');

   elseif C4>=200 && C4<=500
      disp('Cuadro 4 CIRCULO');
      O4=O4+1;
  
   elseif C4<=50
      disp('Cuadro 4 EQUIS');
      X4=X4+1;
  end
  
  %%%%%% QUINTO
  if C5>=750
    disp('Cuadro 5 no hay nada');
  elseif C5>=200 && C5<500
     disp('Cuadro 5 CIRCULO');  
     O5=O5+1;
  elseif C5<=50
      disp('Cuadro 5 EQUIS');
      X5=X5+1;
 end
 
 %%%%%%% SEXTO !!!!!
if C6>=500
     disp('Cuadro 6 no hay nada');   
elseif C6>=200 && C6<500
     disp('Cuadro 6 CIRCULO');
     O6=O6+1;
elseif C6<=50
     disp('Cuadro 6 EQUIS');
     X6=X6+1;

 end
 
 %%%SEPTIMO
   if C7>=600
      disp('Cuadro 7 no hay nada');
   elseif C7>=200 && C7<500
      disp('Cuadro 7 CIRCULO');
      O7=O7+1;
   elseif C7<=50
      disp('Cuadro 7 EQUIS');
      X7=X7+1;
  end
  
%%%%%% OCTAVO
  if C8>=750
    disp('Cuadro 8 no hay nada');
  elseif C8>=200 && C8<500
     disp('Cuadro 8 CIRCULO');  
     O8=O8+1;
  elseif C8<=50
      disp('Cuadro 8 EQUIS');
      X8=X8+1;
 end
         
%%%%%%% NOVENO
if C9>=600
     disp('Cuadro 9 no hay nada');     
elseif C9>=200 && C9<500
     disp('Cuadro 9 CIRCULO');
     O9=O9+1;

elseif C9<=50
     disp('Cuadro 9 EQUIS');
     X9=X9+1;

 end
 
 %%%%%%%%%%% CASOS // POSIBILIDADES
 if X1==0
       writeDigitalPin(a,'D2',1);
       pause(1);
       writeDigitalPin(a,'D2',0);
       disp('Mover X a cuadro 1 ');
elseif X1==1
       disp('LISTO');      
 end

 
%//////////// SOLITARIO
 if X1==1 && O1==0 && O2==1 && O3==0 && O4==0 && O5==0 && O6==0 && O7==0 && O8==0 && O9==0  
       writeDigitalPin(a,'D6',1);
       pause(1);
       writeDigitalPin(a,'D6',0);
       disp('2 = Cuadro 5 ');
       
elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==0 && O5==0 && O6==0 && O7==0 && O8==0 && O9==0  
       writeDigitalPin(a,'D6',1);
       pause(1);
       writeDigitalPin(a,'D6',0);
    disp('3 = Cuadro 5');
    X5=X5+1;
    
elseif X1==1 && O1==0 && O2==0 && O3==0 && O4==1 && O5==0 && O6==0 && O7==0 && O8==0 && O9==0 
       writeDigitalPin(a,'D3',1);
       pause(1);
       writeDigitalPin(a,'D3',0);
    disp('4 = Cuadro 2');
    X2=X2+1;
    
elseif X1==1 && O1==0 && O2==0 && O3==0 && O4==0 && O5==1 && O6==0 && O7==0 && O8==0 && O9==0 
      writeDigitalPin(a,'D3',1);
      pause(1);
      writeDigitalPin(a,'D3',0);
       disp('5 = Cuadro 2');
      X2=X2+1;
      
elseif X1==1 && O1==0 && O2==0 && O3==0 && O4==0 && O5==0 && O6==1 && O7==0 && O8==0 && O9==0 
       writeDigitalPin(a,'D3',1);
       pause(1);
       writeDigitalPin(a,'D3',0);
        disp('6 = Cuadro 2');
       X2=X2+1;
       
elseif X1==1 && O1==0 && O2==0 && O3==0 && O4==0 && O5==0 && O6==0 && O7==1 && O8==0 && O9==0 
       writeDigitalPin(a,'D6',1);
       pause(1);
       writeDigitalPin(a,'D6',0);
       disp('7 = Cuadro 5');
      X5=X5+1;
      
elseif X1==1 && O1==0 && O2==0 && O3==0 && O4==0 && O5==0 && O6==0 && O7==0 && O8==1 && O9==0 
       writeDigitalPin(a,'D3',1);
       pause(1);
       writeDigitalPin(a,'D3',0);
      disp('8 = Cuadro 2');
     X2=X2+1;
     
elseif X1==1 && O1==0 && O2==0 && O3==0 && O4==0 && O5==0 && O6==0 && O7==0 && O8==0 && O9==1
       writeDigitalPin(a,'D8',1);
       pause(1);
       writeDigitalPin(a,'D8',0);
       disp('9 = Cuadro 7');
      X4=X4+1;
      
%/////////////////////// DECISIONES CON 2      
 elseif X1==1 && O2==1 && O3==0 && O4==0 && O5==0 && O6==0 && O7==0 && O8==0 && O9==1   
      writeDigitalPin(a,'D5',1);
      pause(1);
      writeDigitalPin(a,'D5',0);
     disp('2 y 9= Cuadro 4');
     
elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==0 && O5==0 && O6==0 && O7==0 && O8==0 && O9==1  
     writeDigitalPin(a,'D7',1);
     pause(1);
     writeDigitalPin(a,'D7',0);
    disp('3 y 9 = Cuadro 6');
    
elseif X1==1  && O1==0 && O2==0 && O3==1 && O4==1 && O5==0 && O6==0 && O7==0 && O8==0 && O9==0   
     writeDigitalPin(a,'D6',1);
     pause(1);
     writeDigitalPin(a,'D6',0);
    disp('4 y 3= Cuadro 5');
    
elseif X1==1  && O1==0 && O2==0 && O3==1 && O4==0 && O5==1 && O6==0 && O7==0 && O8==0 && O9==0   
     writeDigitalPin(a,'D8',1);
     pause(1);
     writeDigitalPin(a,'D8',0);
    disp('5 y 3 = Cuadro 7');
    
elseif  X1==1  && O1==0 && O2==0 && O3==1 && O4==0 && O5==0 && O6==1 && O7==0 && O8==0 && O9==0   
     writeDigitalPin(a,'D10',1);
     pause(1);
     writeDigitalPin(a,'D10',0);
    disp('6 y 3 = Cuadro 9 ');
    
elseif  X1==1 && O1==0 && O2==0 && O3==0 && O4==0 && O5==0 && O6==0 && O7==1 && O8==0 && O9==1   
     writeDigitalPin(a,'D9',1);
     pause(1);
     writeDigitalPin(a,'D9',0);
    disp('7 y 8 = Cuadro 8');
       
elseif X1==1  && O1==0 && O2==0 && O3==1 && O4==0 && O5==0 && O6==0 && O7==0 && O8==1 && O9==0   
     writeDigitalPin(a,'D5',1);
     pause(1);
     writeDigitalPin(a,'D5',0);
    disp('8 y 3= Cuadro 4');
    
elseif X1==1 && O1==0 && O2==0 && O3==0 && O4==1 && O5==0 && O6==0 && O7==0 && O8==0 && O9==1   
     writeDigitalPin(a,'D4',1);
     pause(1);
     writeDigitalPin(a,'D4',0);
    disp('9 y 4 = Cuadro 3');
    
    
    
%////////////////// DECISION CON 3 
elseif X1==1 && X4==1 && O2==1 && O3==0 && O4==0 && O5==0 && O6==0 && O7==1 && O8==0 && O9==1   
      writeDigitalPin(a,'D7',1);
      pause(1);
      writeDigitalPin(a,'D7',0);
     disp('2,9 y 7 = Cuadro 6');
     disp('ROBOT GANA');
 elseif X1==1 && X4==1 && O2==1 && O3==0 && O4==0 && O5==0 && O6==1 && O7==0 && O8==0 && O9==1   
      writeDigitalPin(a,'D8',1);
      pause(1);
      writeDigitalPin(a,'D8',0);
     disp('2,9 y 6 = Cuadro 7');
     disp('ROBOT GANA');
     
elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==1 && O5==0 && O6==0 && O7==0 && O8==0 && O9==1  
     writeDigitalPin(a,'D9',1);
     pause(1);
     writeDigitalPin(a,'D9',0);
    disp('3,9 y 4 = Cuadro 8');
    disp('ROBOT GANA');
    
elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==1 && O5==0 && O6==0 && O7==0 && O8==0 && O9==1   
     writeDigitalPin(a,'D9',1);
     pause(1);
     writeDigitalPin(a,'D9',0);
    disp('4,3 y 9= Cuadro 8');
    
elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==1 && O5==1 && O6==0 && O7==0 && O8==0 && O9==0   
     writeDigitalPin(a,'D7',1);
     pause(1);
     writeDigitalPin(a,'D7',0);
    disp('5,3 y 4 = Cuadro 6');
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
elseif  X1==1 && O1==0 && O2==0 && O3==1 && O4==1 && O5==0 && O6==1 && O7==0 && O8==0 && O9==0   
     writeDigitalPin(a,'D6',1);
     pause(1);
     writeDigitalPin(a,'D6',0);
    disp('6,3 y 4 = Cuadro 5 ');
    disp('GANA ROBOT');
elseif  X1==1 && O1==0 && O2==0 && O3==1 && O4==0 && O5==1 && O6==1 && O7==0 && O8==0 && O9==0   
    writeDigitalPin(a,'D8',1);
     pause(1);
     writeDigitalPin(a,'D8',0);
    disp('6,3 y 5 = Cuadro 7 ');
    
elseif  X1==1 && O1==0 && O2==0 && O3==1 && O4==0 && O5==0 && O6==1 && O7==1 && O8==0 && O9==0   
     writeDigitalPin(a,'D6',1);
     pause(1);
     writeDigitalPin(a,'D6',0);
    disp('6,3 y 7 = Cuadro 5 ');
    disp('GANA ROBOT');
    
elseif  X1==1  && O1==0 && O2==0 && O3==1 && O4==0 && O5==0 && O6==1 && O7==0 && O8==1 && O9==0   
     writeDigitalPin(a,'D6',1);
     pause(1);
     writeDigitalPin(a,'D6',0);
    disp('6,3 y 8 = Cuadro 5 ');
    disp('GANA ROBOT');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
     
 elseif  X1==1 && X4==0 && O1==0 && O2==1 && O3==0 && O4==0 && O5==0 && O6==0 && O7==1 && O8==0 && O9==1   
      writeDigitalPin(a,'D7',1);
      pause(1);
      writeDigitalPin(a,'D7',0);
     disp('7,9 y 2 = Cuadro 6');
        
 elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==0 && O5==0 && O6==0 && O7==1 && O8==1 && O9==0   
      writeDigitalPin(a,'D7',1);
      pause(1);
      writeDigitalPin(a,'D7',0);
     disp('8,3 y 7 = Cuadro 6');
     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
 elseif X1==1 && O1==0 && O2==1 && O3==0 && O4==1 && O5==0 && O6==0 && O7==0 && O8==0 && O9==1   
      writeDigitalPin(a,'D6',1);
      pause(1);
      writeDigitalPin(a,'D6',0);
     disp('9,4 y 2 = Cuadro 5');
     disp('ROBOT GANA');
 elseif X1==1 &&X3==1 && X7==1 && O1==0 && O2==0 && O3==0 && O4==1 && O5==1 && O6==0 && O7==0 && O8==0 && O9==1   
      writeDigitalPin(a,'D3',1);
      pause(1);
      writeDigitalPin(a,'D3',0);
     disp('9,4 y 5 = Cuadro 2');
     disp('ROBOT GANA');
     
 %///////////// DESICION CON 4 MOVIMIENTOS
 elseif X1==1 && O1==0 && O2==1 && O3==1 && O4==1 && O5==0 && O6==0 && O7==0 && O8==0 && O9==1  
     writeDigitalPin(a,'D8',1);
     pause(1);
     writeDigitalPin(a,'D8',0);
    disp('3,9,4 y 2= Cuadro 7');
    disp('GATO!');
    
elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==1 && O5==0 && O6==0 && O7==0 && O8==1 && O9==1   
     writeDigitalPin(a,'D8',1);
     pause(1);
     writeDigitalPin(a,'D8',0);
    disp('4,3,9 y 8= Cuadro 7');
    disp('GATO!');
elseif X1==1  && O1==0 && O2==0 && O3==1 && O4==1 && O5==1 && O6==0 && O7==0 && O8==1 && O9==0   
     writeDigitalPin(a,'D10',1);
     pause(1);
     writeDigitalPin(a,'D10',0);
    disp('5,3,4 y 8 = Cuadro 9');
    disp('GATO!');

elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==1 && O5==1 && O6==0 && O7==0 && O8==0 && O9==1   
     writeDigitalPin(a,'D9',1);
     pause(1);
     writeDigitalPin(a,'D9',0);
    disp('5,3,4 y 9 = Cuadro 8');
    disp('GATO!');
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
elseif  X1==1  && O1==0 && O2==0 && O3==1 && O4==0 && O5==1 && O6==1 && O7==0 && O8==1 && O9==0   
     writeDigitalPin(a,'D5',1);
     pause(1);
     writeDigitalPin(a,'D5',0);
    disp('6,3,5 y 8 = Cuadro 4 ');
    disp('ROBOT GANA');
    
elseif  X1==1 && O1==0 && O2==0 && O3==1 && O4==1 && O5==1 && O6==1 && O7==0 && O8==0 && O9==0   
     writeDigitalPin(a,'D9',1);
     pause(1);
     writeDigitalPin(a,'D9',0);
    disp('6,3,5,4= Cuadro 8 ');
    disp(' PERSONA GANA');
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif  X1==1 && O1==0 && O2==1 && O3==0 && O4==1 && O5==0 && O6==0 && O7==1 && O8==0 && O9==1   
      writeDigitalPin(a,'D4',1);
      pause(1);
      writeDigitalPin(a,'D4',0);
     disp('7,9,2 Y 4 = Cuadro 3');
     disp('GATO!');
     
 elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==0 && O5==1 && O6==0 && O7==1 && O8==1 && O9==0  
      writeDigitalPin(a,'D10',1);
      pause(1);
      writeDigitalPin(a,'D10',0);
     disp('8,3,7 y 5 = Cuadro 9');
     disp('PERSONA GANA');
elseif X1==1 && O1==0 && O2==0 && O3==1 && O4==0 && O5==0 && O6==0 && O7==1 && O8==1 && O9==1   
      writeDigitalPin(a,'D6',1);
      pause(1);
      writeDigitalPin(a,'D6',0);
     disp('8,3,7 y 9 = Cuadro 5');
     disp('PERSONA GANA');

 %////////////////////// EQUIVOCACIONES PARA GANAR
elseif X1==1 && X5==1 && X9==0 && O1==0 && O2==1  
       writeDigitalPin(a,'D10',1);
       pause(1);
       writeDigitalPin(a,'D10',0);
       disp('2 y X = Cuadro 9 ');
       disp('ROBOT GANA');
       
elseif X1==1 && X5==1 && X9==0 && O3==1 && O9==0  
     writeDigitalPin(a,'D10',1);
     pause(1);
     writeDigitalPin(a,'D10',0);
    disp('3 y X = Cuadro 9');
    disp('ROBOT GANA');
    
 elseif X1==1 && X2==1 && X3==0 && O4==1    
     writeDigitalPin(a,'D4',1);
     pause(1);
     writeDigitalPin(a,'D4',0);
    disp('4 y X= Cuadro 3');
     disp('ROBOT GANA');
     
elseif X1==1 && X2==1 && X3==0 && O5==1   
     writeDigitalPin(a,'D4',1);
     pause(1);
     writeDigitalPin(a,'D4',0);
    disp('5 y X = Cuadro 3');
     disp('ROBOT GANA');
     
elseif  X1==1 && X2==1 && O6==1 && O3==0  
     writeDigitalPin(a,'D4',1);
     pause(1);
     writeDigitalPin(a,'D4',0);
    disp('6 y X = Cuadro 3 ');
     disp('ROBOT GANA');
     
elseif  X1==1 && X5==1 && O7==1 && O9==0   
     writeDigitalPin(a,'D10',1);
     pause(1);
     writeDigitalPin(a,'D10',0);
    disp('7 y X = Cuadro 9');
    disp('ROBOT GANA');
     
 elseif X1==1  && X2==1 && O8==1 && O3==0   
     writeDigitalPin(a,'D4',1);
     pause(1);
     writeDigitalPin(a,'D4',0);
    disp('8 y X = Cuadro 3');
     disp('ROBOT GANA');
    
elseif X1==1 && O4==0 && X7==1 && O9==1   
     writeDigitalPin(a,'D5',1);
     pause(1);
     writeDigitalPin(a,'D5',0);
    disp('9 y X = Cuadro 4');
     disp('ROBOT GANA');
     

 end
 close all
  
 
 
 
 
 
 
 
