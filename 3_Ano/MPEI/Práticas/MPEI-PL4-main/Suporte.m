%initialize data structures

countries = readcell('countries_info.csv',Delimiter=';'); % row n (country id) contains information about country n (which is used in the second column of travels1.data)
% and the first column contains the name of the country, keep in mind that
% this is a cell array
tourists = readcell('tourists1.txt', Delimiter= ';'); % first column contains the tourist ID, second and third column contains first and lastname respectively, also this is a cell array
travels = load('travels1.data'); % first column contains the tourist ID, and the second column contains the country ID, this is vector that contains doubles

%%%%%%%%%%%%%%%%%%%%%%%%% OPÇÃO 2%%%%%%%%%%%%%%%%%%
% criar conjuntos de viagens avaliados pelos turistas
% Código base para deteção de pares similares
% Fica apenas com as duas primeiras colunas
u = travels(:,1:2);

% Lista de turistas
touristsIds = unique(u(:,1)); % Extrai os IDs dos turistas
numberOfTourists = length(touristsIds); % Número de turistas

% Constrói a lista de viagens para cada turista
countriesByTourist = cell(numberOfTourists,1); % Usa células
for i = 1:numberOfTourists % Para cada turista
    % Obtém as viagens de cada um
    lines = find(u(:,1) == touristsIds(i));
    % E guarda num array. Usa células porque turista tem um número
    % diferente de viagens. Se fossem iguais podia ser um array
    countriesByTourist{i} = [countriesByTourist{i} u(lines,2)];
end

K = 100;
MinHashOp2 = inf(numberOfTourists,K);
h = waitbar(0,'Calculating MinHash Op2');
for i = 1:numberOfTourists
    waitbar(i/numberOfTourists, h);
    setOfCountries = countriesByTourist{i};
    
    for j = 1:length(setOfCountries)
        chave = char(setOfCountries(j));
        hash = zeros(1,K);
        for z = 1:K
            chave = [chave num2str(z)];
            hash(z) = DJB31MA(chave,127);
        end
        MinHashOp2(i,:) = min([MinHashOp2(i,:),hash]);
    end
end
delete(h)

%%%%%%%%%%%%%%%%%%%%%%%%% OPÇÃO 3%%%%%%%%%%%%%%%%%%
shingle_size = 11; % Tamanho do shingle
K = 50;          % Numero de funcoes de dispersao
numberOfCountries = size(countries, 1);
MinHashOp3 = inf(numberOfCountries,K);

h = waitbar(0,'Calculating MinHash Op3');
for i = 1:numberOfCountries
    waitbar(i/numberOfCountries,h);
    
    % Get the description of the country
    descriptions = countries{i, 2:end};
    for j = 1:length(descriptions)
        description = lower(countries{i, 2});
    end
    shingles = {};
    % Criacao de shingles para a descricao
    for j = 1:length(description) - shingle_size + 1
        shingle = description(j:j+shingle_size-1);
        shingles{j} = shingle;
    end
    
    for j = 1:length(shingles)
        chave = char(shingles(j));
        hash = zeros(1,K);
        for z = 1:K
            chave = [chave num2str(z)];
            hash(z) = DJB31MA(chave,127);
        end
        % Valor minimo da hash para este shingle
        MinHashOp3(i,:) = min([MinHashOp3(i,:);hash]);
    end
end
delete(h);
%%%%%%%%%%%%%%%%%%%%%%%%% OPÇÃO 4%%%%%%%%%%%%%%%%%%


% Number of tourists
numberOfTourists = length(touristsIds);

% Build a list of interests for each tourist
interestsByTourist = cell(numberOfTourists,1);
for i = 1:numberOfTourists
    % Get the interests of each tourist
    lines = find(cell2mat(tourists(:,1)) == touristsIds(i));
    % Store in a cell array
    interestsByTourist{i} = [interestsByTourist{i} tourists(lines,4:end)];
end

K = 100;
MinHashOp4 = inf(numberOfTourists,K);
h = waitbar(0,'Calculating MinHash Op4');
for i = 1:numberOfTourists
    waitbar(i/numberOfTourists, h);
    setOfInterests = interestsByTourist{i};
    
    for j = 1:size(setOfInterests, 2)
        chave = char(setOfInterests(j));
        hash = zeros(1,K);
        for z = 1:K
            chave = [chave num2str(z)];
            hash(z) = DJB31MA(chave,127);
        end
        MinHashOp4(i,:) = min([MinHashOp4(i,:),hash]);
    end
end
delete(h)

%%%%%%%%%%%%%%%%%%%%%%%%% OPÇÃO 5%%%%%%%%%%%%%%%%%%
% initialize bloom filter
bloomFilter = inicializar(length(countries));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% funcoes extra %%%%%%%%%%%
% Initialize the map
touristMap = containers.Map('KeyType', 'double', 'ValueType', 'any');

% Add each tourist to the map
for i = 1:size(tourists, 1)
    id = tourists{i, 1};
    firstName = tourists{i, 2};
    lastName = tourists{i, 3};
    touristMap(id) = {firstName, lastName};
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


save('Suporte','countries','tourists','travels','countriesByTourist','touristsIds','numberOfTourists','MinHashOp2','touristMap','MinHashOp3','MinHashOp4', 'bloomFilter');