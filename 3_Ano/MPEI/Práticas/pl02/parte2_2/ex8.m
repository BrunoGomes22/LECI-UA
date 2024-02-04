m = 0.02 * 100; % 0.02 erros esperados por página

p0 = Poisson(m,0); % 0 erros em 100 páginas
p1 = Poisson(m,1); % 1 erro em 100 páginas

fprintf("P(Maximo um erro) = %f\n",p0 + p1);

