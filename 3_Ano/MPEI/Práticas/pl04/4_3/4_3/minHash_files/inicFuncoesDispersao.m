function v = inicFuncoesDispersao(m,nfd)
% Inicializar com valores aleatorios os parametros de nfd

%definir primo p
ff = 1000;
pp = ff * max(m + 1.76);
pp = pp + ~mod(pp,2); % par
while(isprime(pp) == false)
    pp = pp + 2;
end
v.p = pp; %primo suficientemente grande

%parametro aleatorios
v.a = randi([1,(pp-1)],1,nfd);
v.b = randi([0,(pp-1)],1,nfd);
v.c = randi([1,(pp-1)],1,nfd);

end