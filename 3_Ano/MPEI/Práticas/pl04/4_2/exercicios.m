k = 3;
n = 8000;
numWords = 1000;
vector = inicializar(n);

% read words from file
fileID = fopen('words.txt', 'r');
formatSpec = '%s';
words = textscan(fileID, formatSpec);
fclose(fileID);

words = words{1};
size(words)
U1 = words(1:numWords);
U2 = words(numWords + 1:11000);

% insert words into vector
for i = 1:numWords
    vector = adicionar_elemento(vector, U1{i}, k); %so sao inseridas palavras de U1
end

% check false negatives for U1
exists_word_U1 = zeros(1, numWords);
false_negatives_U1 = 0;

for i = 1:numWords
    exists_word_U1(i) = pertenca(vector, U1{i}, k);

    if ~exists_word_U1(i)
        false_negatives_U1 = false_negatives_U1 + 1;
    end
end

fprintf('False Negatives for U1: %d\n', false_negatives_U1);

% check false positives for U2
exists_word_U2 = zeros(1, numWords);
false_positives_U2 = 0;

for i = 1:numWords
    exists_word_U2(i) = pertenca(vector, U2{i}, k);

    if exists_word_U2(i)
        false_positives_U2 = false_positives_U2 + 1;
    end
end

fprintf('False Positives for U2: %d\n', false_positives_U2);
fprintf('Percentage of false positives: %4.2f%%\n', false_positives_U2 / numWords * 100);

% The optimal value of k is between 5 and 6
