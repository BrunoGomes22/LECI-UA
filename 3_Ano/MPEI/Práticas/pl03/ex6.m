%% a)
clear all
% T ( linha <- coluna)
%   1  2  3  4  5
% 1
% 2
% 3
% 4
% 5
% preencher matriz
T (1,1) = 0.8;
T (1,2) = 0;
T (1,3) = 0;
T (1,4) = 0.3;
T (1,5) = 0;

T (2,1) = 0.2;
T (2,2) = 0.6;
T (2,3) = 0;
T (2,4) = 0.2;
T (2,5) = 0;

T(3,1) = 0;
T(3,2) = 0.3;
T(3,3) = 1;
T(3,4) = 0;
T(3,5) = 0;

T(4,1) = 0;
T(4,2) = 0.1;
T(4,3) = 0;
T(4,4) = 0.4;
T(4,5) = 0;

T(5,1) = 0;
T(5,2) = 0;
T(5,3) = 0;
T(5,4) = 0.1;
T(5,5) = 1;

T

%% b)

v0 = [1 0 0 0 0]';

for n = 1:100
    
    vn = (T^n)*v0;
    p(n) = vn(2); % p serve para guarda probs

end

plot(1:100,p, 'bo:')

%% c)
clf

v0 = [1 0 0 0 0]';

for n = 1:100
    
    vn = (T^n)*v0;
    p3(n) = vn(3); % p serve para guardar probs
    p5(n) = vn(5);

end

plot(1:100,p3, 'bo:', 1:100, p5, 'rx-.')

p3(end)
p5(end)

%% d)
%meter matriz na forma canónica
aux = [0.8 0   0.3 0 0
       0.2 0.6 0.2 0 0
       0   0.1 0.4 0 0
       0   0.3 0   1 0
       0   0   0.1 0 1];

Q = aux(1:3,1:3);

%% e)
% matriz F é importante, representa o número médio de visitas a cada estado
% antes da absorção
% F = (I-Q)^-1
% matriz F dá nos o numero de vezes por onde se passa num certo estado
%F = inv( eye(3) - Q) (maneira alternativa de fazer)
F = (eye(3) - Q)^-1;

%% f)

x1 = [1 0 0]';
x2 = [0 1 0]';
x4 = [0 0 1]';
fprintf("passos antes da absorcao comecando no E1 = %.2f, E2 = %.2f, E4 = %.2f\n", sum(F*x1), sum(F*x2), sum(F*x4));

%% g)

%determinar matriz B
% B = R*F
% é uma matriz que nos dá as probabilidades de sair de um estado transiente
% e de ir para um estado absorvente

R = aux(4:5,1:3);

B = R * F;

fprintf('Prob(estado 3) = %f, Prob(estado 5) = %f',B(1,1),B(2,1));
