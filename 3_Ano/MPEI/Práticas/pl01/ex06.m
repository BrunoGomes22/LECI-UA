%% Codigo 2- cálculo analítico de probabilidade em séries experiências de Bernoulli
% Dados relativos ao problema 1
p = 0.5;
k = 2;
n = 3;
prob= nchoosek(n,k)*p^k*(1-p)^(n-k) % nchoosek(n,k)= n!/(n-k)!/k!

