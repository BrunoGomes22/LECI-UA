%{
1. 4 empresas de publicidades, A B C e D
A cada 2 minutos passa uma publicidade. Começam desde as 7h00 até as 24h00
A primeira possibilidade do dia é equiprovavel para as 4 empresas

a) fazer matriz
c) calcule a probabilidade de às 7:10 ser escolhida a publicidade da empresa A
d) Calcule as probabilidades limite de T e indique quanto tempo por hora em media é mostrada a publicidade da empresa A das 12 as 24 horas
e) Probabilidade de termos a sequencia ABXXXBB; X quer dizer que nao importa
%}

% a
% primeira publicidade é equiprovavel
%    A    B   C   D
T = [0.1  0.1 0.3 0.3
     0.4  0.1 0.3 0.3
     0.25 0.5 0.1 0.3
     0.25 0.3 0.3 0.1];

% c
% calcule a probabilidade de às 7:10 ser escolhida a publicidade da empresa A
x = [0.25 0.25 0.25 0.25]';
prob = T^5*x;
disp(prob(1));

% d
% Calcule as probabilidades limite de T e indique quanto tempo por hora em media é mostrada a publicidade da empresa A das 12 as 24 horas

M = [T - eye(size(T)); ones(1,4)];
x = [0 0 0 0 1]'; % ou [zeros(4,1); 1]
p = M\x;
disp(p(1));

fprintf("%.2f minutos media A\n", 60 * p(1));

% e
o1dia = 0.25;
o2dia = 0.4;
x = [0 1 0 0]';

auxT = T^3*x;
o3dia = auxT(2);
o4dia = 0.1;
disp(o1dia * o2dia * o3dia * o4dia);