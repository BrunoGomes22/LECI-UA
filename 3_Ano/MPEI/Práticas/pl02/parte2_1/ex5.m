N = 1e5;  %numero de experiencias
n = 2;    %numero de vezes lançadas

%% a)

%P(A)
% CF = {4 + 5, 6 + 3, 3+6, 5+4}

dados = randi([1,6],n,N);

a = sum(dados) == 9;   % somar colunas

pa = sum(a)/N;

fprintf("Probabilidade de A = %f%%\n",pa*100);

%P(B) o segundo valor é par

dados = randi([1,6],n,N);

b = dados(2,:);

bPares = rem(b,2) == 0;

pb = sum(bPares)/N;


fprintf("Probabilidade de B = %f%%\n",pb*100);

%P(C)

dados = randi([1,6],n,N);

c = sum(dados == 5) >= 1;

pc = sum(c)/N;

fprintf("Probabilidade de C = %f%%\n",pc*100);

%P(D)

dados = randi([1,6],n,N);

d = dados ~= 1;
d = sum(d) == 2;
d = sum(d);

pd = (d/N);

fprintf("Probabilidade de D = %f%%\n",pd*100);

%% b)

% P(A ^ B) = P(A) * P(B)

%    1     2     3     4     5     6
%
% 1        B           B           B
%
% 2        B           B           B 
%
% 3        B           B           BA
%
% 4        B           B     A     B
%
% 5        B           BA          B
%
% 6        B      A    B           B

PA = 4 / 36;
PB = 18 /36;
PAB = 2 / 36;

PA*PB;
%% c)

% P(C ^ D) = P(C) * P(D)
% fazer a mesma cena aqui
