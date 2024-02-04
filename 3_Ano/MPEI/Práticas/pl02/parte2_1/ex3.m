%% a)

T = 1000;
keys = 10;
N = 1e5;   %nº de experiencias

hashTable = randi([0,T-1],keys,N); %chaves podem ter valores entre 0 e T-1

cf = 0; %casos favoráveis
for i = 1:N
    
    if length(unique(hashTable(:,i))) ~= keys %ver se uma coluna (experiencia) não tem valores repetidos
                                              % se n existerem valores
                                              % repetidos a coluna tem de
                                              % ter tamanho 10
        cf = cf + 1;
    end
    
end

prob = cf/ N;

fprintf("A probabilidade de haver pelo menos uma colisão é %f\n",prob);

%% b)
T = 1000;
keys = 1:1000;  %1000 chaves para associar a 1000 valores
probs = [];
N = 100;  %se as experiências forem mais de 100 o computador rebenta

for i = 1 : length(keys)
    
    cf = 0; % dar reset aos cf para calcular probs para diferentes nºs de chaves
    
    hashTable = randi([0,T-1],keys(i),N);  %criar hashtable com x chaves cada chave tem um valor entre 0 e T-1

    for j = 1:N

        
        if length(unique(hashTable(:,j))) ~= keys(i)  %ver se há colisões (chaves com o mesmo valor)
            cf = cf + 1;
        end
    end
    probs(i) = (cf / N)*100;
    
end

plot(keys,probs);
grid on;
xlabel("Número de chaves");
ylabel("Probabilidade de haver colisões");

%% c)
T = 100:100:1000;  %tamanho do array
keys = 50;
N = 1e5;
probs = [];

for i = 1 : length(T)
    
    cf = 0; % dar reset aos cf para calcular probs para diferentes tamanhos do array
    
    hashTable = randi([0,T(i)-1],keys,N);  %criar hashtable com 50 chaves cada chave tem um valor entre 0 e T(i)-1

    for j = 1:N

        if length(unique(hashTable(:,j))) ~= keys  %ver se há colisões (chaves com o mesmo valor)
            cf = cf + 1;
        end
    end
    probs(i) = (1-(cf / N))*100;  %prob de n haver nenhuma colisão. ou seja, probabilidade contrária da alínea a)
    
end

plot(T,probs); %quanto maior o array maior vai ser a probabilidade de não haver nenhuma colisão
grid on;
xlabel("Tamanho do array");
ylabel("Probabilidade de não haver colisões");