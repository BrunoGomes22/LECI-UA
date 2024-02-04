%% a)

%   A B C D
% A 
% B
% C
% D

T = [0.16 0 0 0.36
    0.36 0 0 0.24
    0.24 0 0 0.24
    0.24 1 1 0.16];

%% b)

x = [1 0 0 0]'; %matriz estado inicial
transicoes = [5 10 100 200];

for i = 1:4
    p = T^transicoes(i)*x;  %vai dar uma coluna com [P(A) P(B) P(C) P(D)]'
end


%% c)
% calculo de probabilidades limite
ncols = size(T,2);
nlines = size(T,1);

M = [T - eye(size(T)); ones(1,ncols)]

b = [zeros(nlines,1); 1]

u = M \b



