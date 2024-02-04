%% a)

% mensagens chegam com media de 15/segundo
m = 15;
k = 0;  %valor esperado de mensagens que queremos que o computador receba num segundo
pX0 = Poisson(m,k);

fprintf("P(O computador nao recebe mensagens) = %g\n",pX0);


%% b)
% fazer o complementar (o servidor receber menos de 10 mensagens)
pX = zeros(1,11);
for k  = 0:10
    i = k+1;
    pX(i) = Poisson(m,k);
end

pX10ouMenos = sum(pX);
pXmaisDe10 = 1-pX10ouMenos;

fprintf("P(O computador recebe mais de 10 mensagens) = %f\n",pXmaisDe10);