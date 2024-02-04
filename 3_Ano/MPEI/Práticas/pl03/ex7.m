%% a)
N = 6; %numero de pags

H = [0 0   0 0 1/3 0
     1 0   0 0 1/3 0
     0 0.5 0 1 0   0
     0 0   1 0 0   0
     0 0.5 0 0 0   0
     0 0   0 0 1/3 0];

pr0 = [1/6 1/6 1/6 1/6 1/6 1/6]';
pr = pr0;
for i=1:10
    pr = H * pr;
    result = pr;
end


%p = H^10*pr0; %páginas D e E têm o maior pagerank (alternativa para calcular o pagerank)


%% b)

% dead-end seria ir para a página F
% spider trap seria entrar na página C

%% c)

% resolver dead-end
pr = pr0;
H(:,6) = 1/6; %meter ultima coluna da matriz com 1/N
for i = 1:10
    pr = H * pr;
    result = pr;
end

%% d)

beta = 0.8;

A = beta * H + (1-beta) * ones(N)/N;

pr = ones(N,1)/N;
for i=1:10
    pr = A*pr;
end


%% e)

i = 1;
diff_1 = 1;
diff_2 = 1;
diff_3 = 1;
diff_4 = 1;
diff_5 = 1;
diff_6 = 1;
while diff_1 > 0.0001 && diff_2 > 0.0001 && diff_3 > 0.0001 && diff_4 > 0.0001 && diff_5 > 0.0001 && diff_6 > 0.0001
    it_prob = A^i*pr0;
    it_prob_2 = A^(i+2)*pr0;
    diff_1 = abs(it_prob(1) - it_prob_2(1));
    diff_2 = abs(it_prob(2) - it_prob_2(2));
    diff_3 = abs(it_prob(3) - it_prob_2(3));
    diff_4 = abs(it_prob(4) - it_prob_2(4));
    diff_5 = abs(it_prob(5) - it_prob_2(5));
    diff_6 = abs(it_prob(6) - it_prob_2(6));
    i = i + 1;
end
fprintf("%d Iterations needed", i);
p = A^i*pr0

