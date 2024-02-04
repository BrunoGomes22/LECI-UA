%% a)
N = 1e5;
p = 0.5;
k = 1;
n = 2;

lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) >= k;
probSimulacao = sum(sucessos)/N

%% b)

% S = {MM, FF, MF, FM}
% casos possiveis = 4
% casos favoráveis = 3
p = 3/4

%% c)

% probabilidade de A sabendo B
% B -> um dos filhos é rapaz
% A -> o outro é rapaz
% P(A | B) = P (A ∩ B) / P (B)

familias = rand(2,1e5) > 0.5;

rapazes = sum(familias) == 2;
prob2rapazes = sum(rapazes)/N;  % P(A ∩ B)

rapaz = sum(familias) >= 1;
peloMenos1Rapaz = sum(rapaz)/N; % P(B)

probFinal = prob2rapazes / peloMenos1Rapaz

 %% d)
 
% probabilidade de A sabendo B
% B -> primeiro filho é rapaz
% A -> o segundo filho é rapaz
% P(A | B) = P (A ∩ B) / P (B)

familias = rand(2,1e5) > 0.5;

rapazes = sum(familias) == 2;
prob2rapazes = sum(rapazes)/N;  % P(A ∩ B) probabilidade dos dois 2 filhos serem rapazes

rapaz = familias(1,:) == 1;     %Ir buscar todos os valores da primeira linha
probPrimeiroRapaz = sum(rapaz)/N; %P(B) probabilidade do primeiro filho ser rapaz

fprintf("d) %f%%\n", (prob2rapazes/probPrimeiroRapaz)*100);

%% e)

% B -> pelo menos um dos filhos é rapaz
% A -> prob de um dos 5 filhos ser rapaz

familias = rand(5,1e5) > 0.5;

rapazes = sum(familias) == 2;
prob2rapazes = sum(rapazes)/N;  % P(A ∩ B) probabilidade de dois 2 filhos (de 5) serem rapazes

rapaz = sum(familias) >= 1;     % pelo menos um dos filhos é rapaz
prob1rapaz = sum(rapaz)/N;      % P(B) 

fprintf("e) %f%%\n", (prob2rapazes/prob1rapaz)*100);

%% f)

% B -> pelo menos um dos filhos é rapaz
% A -> pelo menos um dos outros filhos é rapaz

familias = rand(5,1e5) > 0.5;

rapazes = sum(familias) >= 2;   % já sabemos que 2 filhos são rapazes
prob2rapazes = sum(rapazes)/N;

rapaz = sum(familias) >= 1;     % pelo menos um dos filhos é rapaz
prob1rapaz = sum(rapaz)/N; 

fprintf("f) %f%%\n", (prob2rapazes/prob1rapaz)*100);