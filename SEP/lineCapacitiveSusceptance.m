%La funci�n lineCapacitiveSusceptance calcula la susceptancia capacitiva
%total por fase de una l�nea de transmisi�n de CA en Ohms. Para el c�lculo
%debe recibir como par�metros de entrada:
%- La frecuencia de operaci�n de la l�nea en Hz
%- La longitud total de la l�nea en km
%- El di�metro medio geom�trico del arreglo en m
%- El radio medio geom�trico del conductor en m

function BC_L = lineCapacitiveSusceptance(f, d, DMG_C, RMG_C)
    c = (2*pi*(8.85*10^(-12)))/(log(DMG_C/RMG_C));  %capacitancia por unidad de longitud en F/m
    C = c*d*1000;                                   %capacitancia de la l�nea total en F
    BC_L = 2*pi*f*C;                                %Susceptancia de la l�nea en Ohms