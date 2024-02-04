%%a) e b)
n = [20, 40, 100]; %%lançamentos
N = 1e5; %%numero de experiencias

for i = 1:length(n)
    fprintf('A calcular a probabilidade para o espaço de amostragem de %2i lançamentos.\n',n(i))
    probabilidades = zeros(1,n(i)+1); %%vetor para guardar probabilidades
    for j = 0: n(i)
        probSimulacao = probMoeda(N,0.5,j,n(i));
        probabilidades(1,j+1) = probSimulacao;  %%adicionar probabilidades calculadas ao vetor
    end
    figure; %é preciso isto para aparecerem todos os gráficos, caso contrário só aparece o último
    stem(0:n(i), probabilidades,"MarkerEdgeColor",'blue',"MarkerFaceColor",'green');  %últimos 4 argumentos são para mudar cor (não são necessários)
    title(sprintf("Probabilidades para %d lançamentos", n(i))); %fprintf não funfa tem de ser sprintf para escrever a string no gráfico
    xlabel("Número de caras");
    ylabel("Probabilidade");
    grid on; %quadriculado
end

