%% n = nº de dardos
%% m = nº de alvos
%% N = nº de experiencias

function out = alvo(m,n,N)
    simul = randi(m,n,N);
    
    cfav = 0;
    for col = 1:N
        coluna = simul(:,col);
        
        u = unique(coluna);  % se os valores desta coluna forem todos diferentes quer dizer que
                             % os lançamentos acertaram todos em alvos diferentes                        
    
        cfav = cfav + (length(u) == n);
    end
    
    out = cfav / N

end