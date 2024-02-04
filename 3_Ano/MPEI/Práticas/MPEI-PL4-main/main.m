%% main

userID = getID(); % userID it's a double

numeroSelecionado = interfaceSelecao();

while (numeroSelecionado ~= 6)
    
    switch numeroSelecionado
        case 1
            countriesVisited = getCountriesVisited(userID);
            
        case 2
            findSimilarUsersAndVisitedCountries(userID);
            
            
        case 3
            findMostSimilarCountries(userID);
            
        case 4
            findSimilarTourists(userID);
            
        case 5
            estimatedCount = getVisitCount(userID);
            
        case 6
            return; % Termina o programa
            
        otherwise
            fprintf('Opção inválida.\n');
    end
    
    numeroSelecionado = interfaceSelecao();
end