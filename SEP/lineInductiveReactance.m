%La funci�n lineInductiveReactance calcula la reactancia inductiva total por fase de
%una l�nea de transmisi�n de CA en Ohms. Para el c�lculo debe recibir como 
%par�metros de entrada:
%- La frecuencia de operaci�n de la l�nea en Hz
%- La longitud total de la l�nea en km
%- El di�metro medio geom�trico del arreglo en m
%- El radio medio geom�trico del conductor en m
%Devuelve un vector con la reactancia inductiva en Ohms y el valor de la
%inductancia en H.

function XL_L = lineInductiveReactance(f, d, DMG_L, RMG_L)
    l = (2*10^(-7))*log(DMG_L/RMG_L);   %inductividad por unidad de longitud en H/m
    L = l*d*1000;                       %inductividad de la l�nea total en H
    XL_L = [2*pi*f*L, L];               %Reactancia de la l�nea en Ohms