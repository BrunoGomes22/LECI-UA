T = [0 0 0 0 0 0 0
    0.5 0 0 0 0 0 0
    0.5 0 0 0 0 0 0
    0 1/3 0.6 0.4 0.5 0.3 0
    0 1/3 0 0.1 0.2 0 0
    0 1/3 0.4 0.3 0 0.3 0
    0 0 0 0.2 0.3 0.4 0];

N = 1e5;
cell_array = cell(N, 1);

for i = 1:N
    cell_array(i) = {crawl(T, 1, 7)};
end

lengths = cellfun('length', cell_array);
cont = 0;
cont2 = 0;

for i = 1:N
    b = cell_array{i}; 

    if lengths(i) == 8 && b(2) == 2 && b(7) == 6
        cont = cont + 1;
    end

    if lengths(i) == 8 && b(2) == 2
        cont2 = cont2 + 1;
    end

end

fprintf('P(7 digitos iniciada por 91 e terminada em 9) %f\n', cont / N);
fprintf('P(7 digitos iniciada por 91) %f\n', cont2 / N);