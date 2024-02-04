function printMoments(hashCodes, vectorTables)
    h = hashCodes / length(vectorTables);
    fprintf('Momento de ordem 2: medio  - %f teorico - %f\n', mean(h.^2), 1/(2+1));
    fprintf('Momento de ordem 5: medio  - %f teorico - %f\n', mean(h.^5), 1/(5+1));
    fprintf('Momento de ordem 10: medio - %f teorico - %f\n\n', mean(h.^10), 1/(10+1));
end