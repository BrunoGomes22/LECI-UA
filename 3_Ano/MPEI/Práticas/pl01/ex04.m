N = 1e5; %número de experiências
p = 0.5; %probabilidade de caras
k = 6; %número de caras
n = 15; %número de lançamentos
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) >= k;
probSimulacao = sum(sucessos)/N