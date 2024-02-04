function findSimilarUsersAndVisitedCountries(userID)

% Load the MinHash signatures
load('Suporte.mat', 'MinHashOp2', 'touristsIds', 'touristMap','countriesByTourist','countries');

% Find the index of the given user ID in the touristsIds array
userIndex = find(touristsIds == userID);

% Calculate the Jaccard similarity between the given user and all other users
jaccardSimilarities = sum(MinHashOp2 == MinHashOp2(userIndex, :), 2) / size(MinHashOp2, 2);

% Exclude the given user from the results
jaccardSimilarities(userIndex) = 0;

% Find the indices of the two users with the highest Jaccard similarity
[~, closestUserIndices] = maxk(jaccardSimilarities, 2);

% Get the IDs of the closest users
closestUserIDs = touristsIds(closestUserIndices);
fprintf('The 2 most similair users are: \n')
% Get the names of the closest users
for i = 1:2
    id = closestUserIDs(i);
    name = touristMap(id);
    fprintf('User %d: %s %s \n', id, name{1}, name{2});
end

fprintf('\n')
fprintf('List of countries visited\n')
fprintf('\n')
% Get the countries visited by the closest users
for i = 1:2
    id = closestUserIDs(i);
    userIndex = find(touristsIds == id);
    visitedCountriesIDs = countriesByTourist{userIndex};
    visitedCountriesNames = countries(visitedCountriesIDs, 1);
    for j = 1:length(visitedCountriesNames)
        fprintf('%s\n', visitedCountriesNames{j});
    end
end
end