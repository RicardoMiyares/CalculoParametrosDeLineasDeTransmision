
function R_ca = getRca(long, secc_trans, num_hilos)
%   C�lculo de la resistencia de CA de un conductor trenzado de ALUMINIO
%   getRca(long, secc_trans, num_hilos)
%
%   PAR�METROS:
%    > long: Longitud del conductor en ft
%    > secc_trans: Secci�n transversal del conductor en cmil
%    > num_hilos: N�mero de hilos del conductor para calcular factor de
%      trenzado
Resistividad = 17; %(Ohm*cmil)/ft

r1 = Resistividad*long/secc_trans;
if num_hilos > 3
   r1 = r1 + r1*0.05;
else
   r1 = r1 + r1*0.04;
end

R_ca = r1;