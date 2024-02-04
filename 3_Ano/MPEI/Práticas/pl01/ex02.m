%%Código 1

experiencias = rand(3,10000);

lancamentos = experiencias > 0.5;

resultados = sum(lancamentos);

sucessos = resultados == 2;

probSimulacao = sum(sucessos)/10000

%%Código 1 - segunda versão

N = 1e5; %número de experiências
p = 0.5; %probabilidade de caras
k = 2; %número de caras
n = 3; %número de lançamentos
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) == k;
probSimulacao = sum(sucessos)/N





