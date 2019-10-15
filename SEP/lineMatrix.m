%Programa que realiza el c�lculo de voltaje y corriente de las terminales
%de generaci�n de la l�nea de transmisi�n. Este recibe como par�metros: Los
%valores de la matriz, como A, B, C y D, el nivel de tensi�n y corriente en
%la terminal de recepci�n.

function T = lineMatrix(A, B, C, D, V_r, I_r)
    M = [A B; C D];
    R = [V_r; I_r];
    
    T = M*R;
    