%Programa que calcula los niveles de tensi�n y corriente de la l�nea en
%el extremo transmisor de la l�nea, utilizando los par�metros de la l�nea
%media.

function LM = line_Medium(V_op, I_op, Z, Y)
    a = 1 + (Z*Y/2);
    c = Y*(1 + (Z*Y/4));
    LM = lineMatrix(a, Z, c, a, V_op, I_op);