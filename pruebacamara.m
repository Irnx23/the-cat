%%%%%%%%%PRUEBA CON CAMARA
clc
clear all
vid = videoinput('winvideo', 2, 'YUY2_160x120');
preview(vid);
pause(3);
 i=getsnapshot(vid);
% i=imread('Sin titulo.png');
I = rgb2gray(i);
A=255-I;
B=im2bw(I);
%C=imfill(B,'holes');
f=bwlabel(B);
vislabels(f),title('Contar objetos');

g=regionprops(f,'FilledArea')
area_values=[g.FilledArea] %Lista de cantidad de area por objeto

idx=find((100<=area_values) & (area_values<=1000)) 
h=ismember(f,idx);
imshow(h);
[x,y]= size(h);
C1=0,C2=0,C3=0,C4=0,C5=0,C6=0,C7=0,C8=0,C9=0;
%%Colocar en las variables c1-c9. Los resultados de la matriz idx. y ver
%%Que es lo que hace.