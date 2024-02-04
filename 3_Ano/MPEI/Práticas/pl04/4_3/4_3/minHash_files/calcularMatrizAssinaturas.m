function M = calcularMatrizAssinaturas(Conjuntos,v,N,nfd)
% Calcular matriz de assinaturas M através da aplicação de nfd funcoes de
% dispersao aos Conjuntos de filmes avaliados por cada utilizador

nc = length(Conjuntos); % numero de conjuntos
M = zeros(nfd,nc); % matriz minHash
h = waitbar(0,'Calculando as Assinaturas (MinHash) ...')

for nu = 1:nc,
    waitbar(nu/nc,h);
    C = Conjuntos{nu}; % Obter conjunto correspondente a nu

    %para  cada uma das funcoes de dispersao
    for nh = 1:nfd,
        % calc minHash para filmes do conjunto
        % ... calcular para o primeiro filme do conjunto
        M(nh,nu) = mod(v.a(nh)*C(1)+v.b(nh), v.p);

        % ... calcular para os restantes filmes do conjunto
        for nf = 2:length(C),
            htmp = mod(v.a(nh)*(C(nf))+v.b(nh), v.p);
            % para determinar min
            if htmp < M(nh,nu)
                M(nh,nu) = htmp;
            end
        end

    end

end
delete(h)


end