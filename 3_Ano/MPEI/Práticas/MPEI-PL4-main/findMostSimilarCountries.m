function mostSimilarCountries = findMostSimilarCountries(userID)
% Load the necessary data
load('Suporte.mat','countriesByTourist','MinHashOp3','countries','touristsIds');

% Find the index of the given user ID in the touristsIds array
userIndex = find(touristsIds == userID);

% Get the unique countries visited by the user
visitedCountriesIDs = unique(countriesByTourist{userIndex});

% Create a cell array for the most similar countries
mostSimilarCountries = cell(length(visitedCountriesIDs), 2);

% Loop over each visited country
for i = 1:length(visitedCountriesIDs)
    visitedCountryID = visitedCountriesIDs(i);
    
    % Get the MinHash signature of the visited country
    visitedCountrySignature = MinHashOp3(visitedCountryID, :);
    
    % Get the IDs and MinHash signatures of the unvisited countries
    unvisitedCountriesIDs = setdiff(1:size(countries, 1), visitedCountryID);
    unvisitedCountriesSignatures = MinHashOp3(unvisitedCountriesIDs, :);
    
    % Calculate the Jaccard similarity between the visited and unvisited countries
    jaccardSimilarities = sum(visitedCountrySignature == unvisitedCountriesSignatures, 2) / size(visitedCountrySignature, 2);
    
    % Create a cell array of unvisited countries and their distances
    unvisitedCountriesAndDistances = cell(length(unvisitedCountriesIDs), 2);
    for j = 1:length(unvisitedCountriesIDs)
        unvisitedCountriesAndDistances{j, 1} = countries{unvisitedCountriesIDs(j), 1};
        unvisitedCountriesAndDistances{j, 2} = jaccardSimilarities(j);
    end
    
    % Sort the array based on the distances
    unvisitedCountriesAndDistances = sortrows(unvisitedCountriesAndDistances, 2);
    
    % Print the list of unvisited countries and their distances
    fprintf('List of unvisited countries and their distances:\n');
    for j = 1:size(unvisitedCountriesAndDistances, 1)
        fprintf('%s: %f\n', unvisitedCountriesAndDistances{j, 1}, unvisitedCountriesAndDistances{j, 2});
    end
    
    % Find the unvisited country with the highest Jaccard similarity
    [~, mostSimilarCountryIndex] = max(jaccardSimilarities);
    
    % Add the most similar country to the array
    mostSimilarCountries{i, 1} = countries{visitedCountryID, 1};
    mostSimilarCountries{i, 2} = countries{unvisitedCountriesIDs(mostSimilarCountryIndex), 1};
end

% Print the list of most similar countries
fprintf('List of most similar countries:\n');
for i = 1:size(mostSimilarCountries, 1)
    fprintf('The most similar unvisited country to %s is: %s\n', mostSimilarCountries{i, 1}, mostSimilarCountries{i, 2});
end
end