T (1,1) = 0.8;
T (1,2) = 0;
T (1,3) = 0;
T (1,4) = 0.3;
T (1,5) = 0;

T (2,1) = 0.2;
T (2,2) = 0.6;
T (2,3) = 0;
T (2,4) = 0.2;
T (2,5) = 0;

T(3,1) = 0;
T(3,2) = 0.3;
T(3,3) = 1;
T(3,4) = 0;
T(3,5) = 0;

T(4,1) = 0;
T(4,2) = 0.1;
T(4,3) = 0;
T(4,4) = 0.4;
T(4,5) = 0;

T(5,1) = 0;
T(5,2) = 0;
T(5,3) = 0;
T(5,4) = 0.1;
T(5,5) = 1;

%f)
N = 1e4;

res_1 = zeros(1,N);
res_2 = zeros(1,N);
res_3 = zeros(1,N);
for i = 1:N
    res_1(i) = length(crawl(T,1, [3 5]));
    res_2(i) = length(crawl(T,2, [3 5]));
    res_3(i) = length(crawl(T,4, [3 5]));
end
fprintf("passos antes da absorcao comecando no E1 = %.2f, E2 = %.2f, E4 = %.2f\n", sum(res_1)/N, sum(res_2)/N, sum(res_3)/N);

%g)
prob_3 = zeros(1,N);
prob_5 = zeros(1,N);
for i = 1:N
    p1 = crawl(T,1, [3 5]);
    prob_3(i) = p1(end) == 3;
    p2 = crawl(T,1, [3 5]);
    prob_5(i) = p2(end) == 5;
end
fprintf('Prob(estado 3) = %f, Prob(estado 5) = %f\n', sum(prob_3)/N, sum(prob_5)/N);

%% b)
A = [1 2 4];
min = intmax;
max = intmin;

cell_array = {10000};
for i =1:10000
    randomIndex = randi(length(A), 1);
    selected_A_value = A(randomIndex);
    cell_array{i} = crawl(T,selected_A_value, [3 5]);
    if length(cell_array{i}) < min
        min = length(cell_array{i});
    end
    if length(cell_array{i}) > max
        max = length(cell_array{i});
    end
end

fprintf("Max length: %d\t Min length: %d\n", max, min);
