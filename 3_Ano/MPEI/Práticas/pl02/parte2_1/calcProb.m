%% N = numero de experiencias
%% p = probabilidade de caras
%% k = numero de caras
%% n = numero de lançamentos
function [probSimulacao] = calcProb(N,p,k,n)
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) == k;
probSimulacao = sum(sucessos)/N;
end
