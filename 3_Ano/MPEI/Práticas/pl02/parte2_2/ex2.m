%% a)
% 90 notas -> 5 euros
% 9 notas -> 50 euros
% 1 nota -> 100
% espaço amostragem [1:100]

% o espaco de amostragem da experiencia "Retirar uma nota da caixa" é:
% S = {nota 1, nota 2, ... , nota 100}
% não interessa o valor das notas
% cf/cp = 1/100

%% b)

%aqui interessa o valor da nota
%Espaco amostral de X: Sx = {5, 50, 100}

%Funcao massa de probabilidade de X:
%pX(x) = P("Sair nota com valor x")

%pX(5) = P("Sair nota com valor 5") = 90/100;
%pX(50) = P("Sair nota com valor 50") = 9/100;
%pX(100) = P("Sair nota com valor 100") = 1/100;

%% c)

%distribuição acumulada
x = [5, 50, 100];
px = [0.9, 0.09, 0.01]; % probabilidade para cada tipo de nota
xd = [-1 x 101]; % limites visuais do grafico
pxd = [0 px 0]; % probabilidades para somar gradualmente
fd = cumsum(pxd);
stairs(xd,fd,'r');

