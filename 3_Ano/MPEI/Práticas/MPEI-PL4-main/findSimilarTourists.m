function findSimilarTourists(userID)
% Load the variables from the Suporte.mat file
load('Suporte.mat', 'MinHashOp4', 'touristMap', 'touristsIds', 'numberOfTourists');

% Find the index of the user in the touristsIds array
userIndex = find(touristsIds == userID);

% Get the MinHash signature of the user
userSignature = MinHashOp4(userIndex, :);

% Calculate the Jaccard similarity between the user and all other tourists
jaccardSimilarities = zeros(1, numberOfTourists);
for i = 1:numberOfTourists
    jaccardSimilarities(i) = sum(userSignature == MinHashOp4(i, :)) / size(MinHashOp4, 2);
end

% Find the indices of the tourists with the highest Jaccard similarity
[~, sortedIndices] = sort(jaccardSimilarities, 'descend');

% Get the IDs of the most similar tourists
similarTouristsIds = touristsIds(sortedIndices);

% Print the IDs of the most similar tourists
userNames = touristMap(userID);
fprintf('The tourists with the most similar interests to %s %s are:\n', userNames{1}, userNames{2});
%10 most similair users based on interests excluding the userID
for i = 2:11
    touristName = touristMap(similarTouristsIds(i));
    fprintf('%s %s\n', touristName{1}, touristName{2});
end
end