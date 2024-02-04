function [collisions, vectorTables, hashCodes] = calculateHashStatistics(keys, algorithm, tableSize)
    collisions = 0;
    vectorTables = zeros(1, tableSize);
    hashCodes = zeros(1, length(keys));

    tic
    for j = 1:length(keys)
        currentKey = keys{j};
        if isempty(currentKey)
            continue; % skip this iteration for empty keys
        end

        hashCodes(j) = mod(string2hash(currentKey, algorithm), tableSize) + 1;

        if vectorTables(hashCodes(j)) > 0
            collisions = collisions + 1;
        end

        vectorTables(hashCodes(j)) = vectorTables(hashCodes(j)) + 1;
    end
end