%% a)

num_moedas = 4;
xi = 0:4;

pX = zeros(1, num_moedas);

N = 1e5;
pCara = 0.5;

for i = 0:num_moedas

    k = xi(i+1)
    pX(i+1) = probMoeda(N,pCara,k,num_moedas);
end

stem(xi,pX);
xlabel("x_i")
ylabel("pX(x_i)")

axis([-0.5 num_moedas+0.5 -0.005 max(pX)*1.1])

%% b)

%Valor esperado = somatorio de i=0 ate m de xi * P(X = xi)
% (0 + 1 + 2 + 3 + 4) / 5
E = 0; 
for i=1 : 5
  E = E + (i-1) * pX(i);
end


fprintf("E[X]: %d\n",E);

%Variancia = E[X^2] - E^2[X]
E2 = 0;
for i=1 : 5
  E2 = E2 + (i-1)^2 * pX(i);
end

var = E2 - E^2;

fprintf("Var(X)= %d\n",var);

%Desvio padrao = sqrt(var(X))
dp = sqrt(var);
fprintf("σX = %d\n",dp);

%% c)
% esta variavel aleatoria apresenta o comportamento de uma Distribuicao Binomial
%visto que basicamente, temos 4 repeticoes de uma experiencia de Bernoulli (no 
%lancamento de uma moeda, podemos encarar que temos sucesso quando calha coroa
%e insucesso quando calha cara)

%expressao da funcao de massa de prob. de uma variavel Binomial:
%pX(k) = nCk * p^k * (1-p)^(n-k) = n! / (k! * (n-k)!) * p^k * (1-p)^(n-k)

%% d)
pXTeorica = zeros(1,5);
n = 4;
p = 1/2;

for i=1 : 5
  k = i-1;
  nCk = factorial(n)/(factorial(k) * factorial(n-k));
  pXTeorica(i) = nCk * p^k * (1-p)^(n-k);
end 

subplot(2,2,[3,4]);
x = 0:4;
stem(x,pXTeorica);

axis([-0.5 4.5 0 0.5]);
xlabel('x');
ylabel('pX');
title("Grafico Funcao de Probabilidade de X (Teorico)");

%% f)
%i)
p = sum(pXTeorica(x >= 2));
fprintf("P(Pelo menos 2 coroas): %d\n",p);

%ii)
p = sum(pXTeorica(x <= 1));
fprintf("P(Ate 1 coroa): %d\n",p);

%iii)
p = sum(pXTeorica(x >= 1 & x <= 3));
fprintf("P(Entre 1 e 3 coroas): %d\n",p);


