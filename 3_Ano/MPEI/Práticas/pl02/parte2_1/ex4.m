%% a)

pessoas = 1000;  %valor aleatório
N = 1e5;
dias =  365;

for i = 1 : pessoas
    cf = 0;
    aniversarios = randi([1,365], i, N);   % o i é o numero de pessoas
    for j = 1 : N
        if length(unique(aniversarios(:,j))) ~= i % ver se duas ou mais pessoas fazem anos no mesmo dia
            cf = cf + 1;
        end
    end
    prob = (cf/N);
    if prob > 0.5
        break;
    end
end

fprintf("O mínimo número de pessoas é %d\n",i);

%% b)

pessoas = 1000;  %valor aleatório
N = 1e5;

for i = 1 : pessoas
    cf = 0;
    aniversarios = randi([1,365], i, N);   % o i é o numero de pessoas
    for j = 1 : N
        if length(unique(aniversarios(:,j))) ~= i % ver se duas ou mais pessoas fazem anos no mesmo dia
            cf = cf + 1;
        end
    end
    prob = (cf/N);
    if prob > 0.9   % só mudar este valor
        break;
    end
end

fprintf("O mínimo número de pessoas é %d\n",i);






