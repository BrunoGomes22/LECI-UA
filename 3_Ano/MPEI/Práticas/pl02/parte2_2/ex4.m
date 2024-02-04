%% a)
%Por simulacao
%i)
p = 0.3; % 30% prob
N = 1e5; % num exp
s = 0:5; % amostras vao de 0 a 5

for i=1 : 6
  k = i-1;
  pX(i) = probMoeda(N,p,k,n);
end
stem(s,pX), xlabel('x'), ylabel('px(x)'), title('Funcao massa de probabilidade');


%ii)
%funcao distribuicao acumulada
x = [0 1 2 3 4 5]; % amostras
fd = cumsum(pX);
stairs([0 1 2 3 4 5],fd,'r');

%iii)
%estimativa para probabilidade de, no maximo, 2 das pecas de uma amostra serem defeituosas
num_simulations = 100000;
p_defective = 0.3;
sample_size = 5; 
num_successes = 0;

for i = 1:num_simulations
    % Gere uma amostra aleatória de peças
    sample = rand(sample_size, 1) <= p_defective;
    
    % Conte o número de peças defeituosas
    num_defective = sum(sample);
    
    % Se o número de peças defeituosas for 2 ou menos, adicione 1 ao contador de sucessos
    if num_defective <= 2
        num_successes = num_successes + 1;
    end
end

p_estimated = num_successes / num_simulations;

fprintf('Probabilidade estimada: %f\n', p_estimated);

%% b)

%i)

%Analiticamente:

%Como X e uma variavel Binomial: %pX(k) = nCk * p^k * (1-p)^(n-k) = n! / (k! * (n-k)!) * p^k * (1-p)^(n-k)
% i)
pXTeorica = zeros(1,6);
n = 5;   %Numero de pecas escolhidas
p = 3/10; %Probabilidade da peca ser defeituosa (=30/100 = 30%)

for k=0 : 5
  i = k+1;
  nCk = factorial(n)/(factorial(k) * factorial(n-k));
  pXTeorica(i) = nCk * p^k * (1-p)^(n-k);
end

pXTeorica;

figure(1);
hold on;

x = 0:5;

subplot(2,2,[1,2]);

stem(x,pXTeorica);

axis([-0.5 5.5 0 1]);
xlabel('x');
ylabel('pX');
title("Grafico Funcao de Probabilidade de X (Teorico)");

%ii)

%Analiticamente:
disp("Analiticamente:");

p = pXTeorica(1) + pXTeorica(2) + pXTeorica(3);
fprintf("P(Termos no maximo 2 pecas defeituosas) = %f\n",p);


