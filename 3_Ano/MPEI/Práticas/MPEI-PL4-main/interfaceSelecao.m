function numeroSelecionado = interfaceSelecao()    
opcoes = {'Countries (or regions) visited by current user.', 
        'Set of countries evaluated by the 2 more similar users.', 
        'Suggestion of countries to visit.', 
        'Suggestion of similar tourists based on interests.',
        'Estimate total of visits to the countries visited by current user.',
        'Exit'}; %options

    
while true
    for i = 1:numel(opcoes)
        fprintf('%d. %s\n', i, opcoes{i});
    end
    
    numeroSelecionado = input('Enter option number: ');
   
    if  ((numeroSelecionado >= 1) && (numeroSelecionado<= 6))
        fprintf('Valid option\n ');
        return;
        
    end
end