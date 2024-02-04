%% a)

T = zeros(20);
for i = 1:20
    A = rand(20,1);
    A = A / sum(A);
    T(:,i) = A;
end
sum(sum(T)) / 20 == 1

%% b)

transicoes = [2,5,10,100]
x = zeros(1,20)';
x(1) = 1;

for i = 1:4
    p = T^transicoes(i)*x;
    fprintf("P(Estado 20 com %d transicoes) = %.5f%%\n", transicoes(i), p(20)*100);
end

% o valor é sempre semelhante nao importando o valor de transiçoes

