%% ex1
% a)
% 1.tamanho
% 2.escolher conjunto de numeros aleatorios (para escolher letra aleatoria)
% 3.transformar vetor para letras

%% a)
N = 10^5;
imin = 6;
imax = 20;
caracteres = ['A':'Z' 'a':'z'];
prob_caracteres = ones(1, length(caracteres)) / length(caracteres);
chaves = key_gen(N, imin, imax, caracteres, prob_caracteres);
save('../4_1/chaves_pt.mat', 'chaves');

%% b)
prob_caracteres = load('prob_pt.txt');
caracteres = ['a':'z'];
chaves = key_gen(N, imin, imax, caracteres, prob_caracteres);