
function R_L = tempFunctionRes(R1, t1, t2)
%   C�lculo de la resistencia en funci�n de la temperatura de un conductor 
%   de ALUMINIO.
%   tempFunctionRes(R1, t1, t2)
%
%   PAR�METROS:
%    > R1: Resistencia del conductor a la temperatura 1 [Ohms]
%    > t1: Temperatura del conductor con resistencia R1 [�C]
%    > t2: Temperatura a la que se quiere calcular la resistencia del
%      conductor [�C]
T = 228; %�C, para conductores de aluminio estirado

R_L = R1*(T+t2)/(T+t1);