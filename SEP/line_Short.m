%Programa que calcula los niveles de tensi�n y corriente de la l�nea en
%el extremo transmisor de la l�nea, utilizando los par�metros de la l�nea
%corta.

function LS = line_Short(V_op, I_op, Z)
    LS = lineMatrix(1, Z, 0, 1, V_op, I_op);