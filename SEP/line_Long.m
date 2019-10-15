%Programa que calcula los niveles de tensi�n y corriente de la l�nea en
%el extremo transmisor de la l�nea, utilizando los par�metros de la l�nea
%larga.

function LL = line_Long(V_op, I_op, Z, Y)
    gl = sqrt(Z*Y);
    
    Z1 = Z*(sinh(gl)/gl);
    Y1 = Y*(tanh(gl/2)/(gl/2));
    
    a = 1 + (Z1*Y1/2);
    c = Y1*(1 + (Z1*Y1/4));
    
    LL = lineMatrix(a, Z1, c, a, V_op, I_op);