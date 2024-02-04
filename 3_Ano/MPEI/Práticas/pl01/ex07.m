%% a)

%Por simulação
%% N = numero de experiencias
%% p = probabilidade de caras
%% k = numero de caras
%% n = numero de lançamentos
N = 1e5;
n = 5;
p = 0.3;
k = 3;
lancamentos = rand(n,N) <= p;       %% a probabilidade de uma peça ser defeituosa nunca é maior que 30%
sucessos = sum(lancamentos) == k;
probSimulacao = sum(sucessos)/N

%Analiticamente
prob = nchoosek(n,k)*p^k*(1-p)^(n-k)

%% b)

k = 2;
lancamentos = rand(n,N) <= p;
sucessos = sum(lancamentos) <= k;
probSimulacao1 = sum(sucessos)/N

prob1 = nchoosek(n,k)*p^k*(1-p)^(n-k)


%% c)
%histograma para peças defeituosas

lancamentos = rand(n,N) <= p;
num_defeituosas = sum(lancamentos);

histogram(num_defeituosas,'Normalization','probability');
xlabel('Número de peças defeituosas');
ylabel('Probabilidade');



