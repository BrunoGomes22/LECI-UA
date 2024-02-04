function totalEstimatedCount = getVisitCount(userID)
    load('Suporte.mat', 'travels', 'countries', 'bloomFilter');

    m = travels(userID == travels(:,1), :); % m has 4 columns, column 1 has the tourist ID, column 2 has the country ID

    visitedCountries = {};

    for i = 1:size(m, 1) % iterates through each row of m to find the country name  
        countryID = m(i,2);
        countryName = countries{countryID, 1};
        visitedCountries = [visitedCountries, countryName]; %add country name to list
    end

   
    totalEstimatedCount = 0;

    for i = 1:length(visitedCountries)
        countryName = visitedCountries{i};

        % add visit to Bloom filter
        bloomFilter = adicionar_elemento(bloomFilter, countryName, 3);

        % check if visit is in Bloom filter and increment total count
        if pertenca(bloomFilter, countryName, 3)
            totalEstimatedCount = totalEstimatedCount + 1;
        end
    end

    fprintf('%d total visits to countries by current user.\n', totalEstimatedCount);
end