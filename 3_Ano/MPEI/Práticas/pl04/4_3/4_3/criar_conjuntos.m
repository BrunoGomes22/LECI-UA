function [Set, users, Nu] = criar_conjuntos(file)
    % criar conjuntos de filmes avaliados pelos utilizadores
    % Código base para deteção de pares similares
    udata=load(file); % Carrega o ficheiro dos dados dos filmes
    % Fica apenas com as duas primeiras colunas
    u= udata(1:end,1:2); clear udata;
    
    % Lista de utilizadores
    users = unique(u(:,1)); % Extrai os IDs dos utilizadores
    Nu= length(users); % Número de utilizadores
    
    % Constrói a lista de filmes para cada utilizador
    Set= cell(Nu,1); % Usa células
    for n = 1:Nu, % Para cada utilizador
        % Obtém os filmes de cada um
        ind = find(u(:,1) == users(n));
        % E guarda num array. Usa células porque utilizador tem um número
        % diferente de filmes. Se fossem iguais podia ser um array
        Set{n} = [Set{n} u(ind,2)];
    end

end