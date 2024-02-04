%% a)
n = 300; % 300 palavras para meter no filtro
p = 0.03; % percentagem falsos positivos

m = -(n * log(p)) / (log(2)^2); %formula para saber tamanho ideal do filtro
m = ceil(m); % tamanho ideal do filtro de bloom

%% b)
N = 10000; % numero de chaves que vamos gerar
k = 1;  % 1 funcao de dispersao
chars = 'a':'z';
prob_chars = ones(1,length(chars))/length(chars); % vetor que tem as probabilidades de cada letra de a-z 

chaves = key_gen(N, chars, prob_chars); % gerar chaves aleatorias 
chaves = unique(chaves); % remover chaves repetidas

vector = inicializar(m); % inicializar filtro de bloom
U1 = chaves(1:300); % buscar 300 chaves (palavras)

for i = 1:length(U1)
    vector = adicionar_elemento(vector, U1{i}, k); %inserir elemento
end

exists_word = ones(1,n); % array binario de 300 elementos

false_positives = 0;
U2 = chaves(301:600); % buscar 300 chaves diferentes das anteriores para testar a existencia de falsos positivos

for i = 1:n
    exists_word(i) = pertenca(vector, U2{i}, k);

    if exists_word(i)
        false_positives = false_positives + 1;
    end
end

(false_positives/n)*100;



