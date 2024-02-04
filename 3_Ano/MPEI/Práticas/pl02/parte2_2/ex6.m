%% a)

n = 8000;
N = 1e4;
p = 1 / 1000;
k = 7;

lancamentos = rand(n,N) < p;
sucessos = sum(lancamentos) == k;
pX = sum(sucessos)/N;
fprintf("px: %f%", pX);

%pB(k) = nCk * p^k * (1-p)^(n-k) = n! / (k! * (n-k)!) * p^k * (1-p)^(n-k)

nCk = prod(n:-1:n-k+1)/prod(k:-1:1); %para representar numeros maiores

%% b)

% Binomial
pBT = zeros(1,51);
for k=0 : 50
  nCk = prod(n:-1:n-k+1)/prod(1:k);
  pBT(k+1) = nCk * p^k * (1-p)^(n-k); %guarda probs no vetor
end

x = 0:50;
stem(x,pBT,'x');

xlabel('x');
ylabel('pX');
title("Grafico Funcao de Probabilidade de B");


m = 8;  %valor esperado 8 * 1/1000 = 8
pBS = zeros(1,51);
for k=0 : 50
  pBS(k+1) = Poisson(m,k);
end

stem(x,pBS,'o');