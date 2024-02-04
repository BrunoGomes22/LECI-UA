function visitedCountries = getCountriesVisited(userID)
    load('Suporte.mat', 'travels','countries','tourists');
   
    m = travels(userID == travels(:,1), :);
    
    visitedCountries = {};

    for i = 1:size(m, 1) % iterates through each row of m to find the country name  
        countryID = m(i,2);
        countryName = countries{countryID, 1};
        visitedCountries = [visitedCountries, countryName]; %add country name to list
    end

    tourist = tourists(userID == cell2mat(tourists(:,1)), :);
    userName = [tourist{1,2}, ' ', tourist{1,3}];  %contatenate first and last name of the user
    
    visitedCountries = unique(visitedCountries); % remove repeated countries
   
    fprintf('Countries visited by %s:\n', userName);
    for i = 1:length(visitedCountries)
        fprintf('->%s\n', visitedCountries{i});
    end
    fprintf("\n");
    
end