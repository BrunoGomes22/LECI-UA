%% a)

load("L.mat");

length(L); %temos 90 páginas web

deadends = 0;

for i = 1:length(L)

    if sum(L(:, i)) == 0
        deadends = deadends + 1;
        disp(i);
    end

end

%% b)

%{
H = L./sum(L);
H(isnan(H)) = 0;
%}

H = zeros(length(L));

for i = 1:length(L)
    soma = sum(L(:, i)); % soma das páginas para quais aponta

    if (soma ~= 0)
        H(:, i) = L(:, i) / soma;
    end

end

%% c)

beta = 0.85;

A = beta * H + (1-beta) * ones(length(L))/length(L);

%% d)

% valor de pagerank de todas as paginas de forma iterativa considerando um numero minimo de iteraçoes que garanta que nenhum valor de pagerank muda mais em modulo que 10^-4 na ultima iteraçao
% e o numero de iteraçoes necessarias para atingir esse criterio
oldstate = ones(length(L), 1) / length(L);
iterations = 0;

while (1)
    newstate = A * oldstate;
    iterations = iterations + 1;

    if (max(abs(newstate - oldstate)) < 10^-4)
        break;
    end

    oldstate = newstate;
end

disp(iterations);


%% e)
deadends = [22 25 32 51];
disp(newstate(22));
disp(newstate(25));
disp(newstate(32));
disp(newstate(51));