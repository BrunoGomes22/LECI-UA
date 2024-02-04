%% a)

%N = 1e5;
%n = 100; %nº de programas
% P(C | E) = P(C ^ E) / P(E)
% P(E) = probabilidade de erro
% P(C) = probabilidade do programa ser do carlos

% considerar linhas 1-50 -> programas do carlos
%            linhas 51-70 -> programas do andré
%            linhas 71-100 -> programas do bruno

% P(Carlos|Erro) = P(CE) / P(E) = 0.5 * 0.001 / 0.001 = 0.5
N = 1e5;
numProgramas = 100;
programas = randi([1, numProgramas], numProgramas, N);

probs = programas <= 50;
probCarlos = sum(sum(probs)) * 0.001 / N;
fprintf("A) %f\n", probCarlos);

%% b)

% P(Carlos|Erro) = P(CE) / P(E) = 0.5 * 0.001 / 0.001 = 0.5
% P(Bruno|Erro) = P(BE) / P(E) = 0.3 * 0.05 / 0.05 = 0.3
% P(Andre|Erro) = P(AE) / P(E) = 0.2 * 0.02 / 0.02 = 0.2
N = 1e5;
numProgramas = 100;
programas = rand(numProgramas, N);

probs = programas(1:50,:) <= 0.001;
probCarlos = sum(sum(probs)) / N;
fprintf("Probabilidade de ser o Carlos: %f%%\n", probCarlos);

probs = programas(81:100,:) <= 0.01;
probAndre = sum(sum(probs)) / N;
fprintf("Probabilidade de ser o André: %f%%\n", probAndre);

probs = programas(51:80,:) <= 0.05;
probBruno = sum(sum(probs)) / N;
fprintf("Probabilidade de ser o Bruno: %f%%\n", probBruno);







 



