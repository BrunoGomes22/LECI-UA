%% a)

n = 20;
m = 100;
N = 1e5;

simul = randi(m,n,N);

cfav = 0;
for col = 1:N
    coluna = simul(:,col);
    
    u = unique(coluna);  % se os valores desta coluna forem todos diferentes quer dizer que
                         % os lançamentos acertaram todos em alvos diferentes                        

    cfav = cfav + (length(u) == n);
end

P = cfav / N

%% b)

P = 1 - P

%% c)

n = 10:10:100;
m = [1e3 1e5];
N = 1e3;

for k=1:2
    subplot(2,1,k);   %%janela que contem 2 gráficos (2linhas, 1 coluna)
    probs = [];       %% vetor para armazenar probs
    for i=1:length(n)
        probs(i) =  1 - alvo(m(k), n(i), N);
    end
  
    plot(n(1:i),probs(1:i),"r.");
    xlabel('dardos');
    ylabel('alvos');
    grid on;
end

%% d)

n = 100;
m = [200, 500, 1000, 2000, 5000, 10000, 20000, 50000, 100000];
probs = 0*n;

for i = 1 : length(m)
    probs(i) = 1 - alvo(m(i),n,1e5);  %guardar valores no vetor probs
end

plot(probs,m);
grid on;