function h = DJB31MA(chave, seed)
h = seed;
for i = 1:length(chave)
    h = mod(31 * h + double(chave(i)), 2^32 -1);
end
end