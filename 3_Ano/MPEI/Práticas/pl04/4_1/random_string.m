function lista = random_string(N, minchars, maxchars, alphabet)
%generate random string, with numb of character between...

lista = cell(N,1);
    % 1 - calcular n (tamanho)
n = randi([minchars, maxchars], N,1);

for i=1:N
    % 2 - vetor
    v = randi([1, length(alphabet)], n(i), 1);

    string = alphabet(v);
    % 3 - passar para strings
    lista{i} = string;
end