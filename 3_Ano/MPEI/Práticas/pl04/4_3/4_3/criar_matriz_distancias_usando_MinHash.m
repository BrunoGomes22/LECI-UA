function J = criar_matriz_distancias_usando_MinHash(Set, Nu, nfh, seed)
% Initialize the signature matrix
MA = inf(Nu, nfh);

% For each user
for u = 1:Nu
    % For each item in the set
    for item = Set{u}
        % For each hash function
        for i = 1:nfh
            % Calculate the hash value using the DJB31MA function
            hc = DJB31MA(num2str(item), seed(i));
            % Update the signature matrix
            if hc < MA(u, i)
                MA(u, i) = hc;
            end
        end
    end
end

% Initialize the Jaccard distance matrix
J = zeros(Nu);

% For each pair of users
for u1=1:Nu
    for u2=u1+1:Nu
        % Get the MinHash signatures for the two users
        C1 = MA(u1,:);
        C2 = MA(u2,:);
        
        % Calculate the Jaccard distance
        iguais = sum(C1 == C2);
        distancia = 1 - iguais/nfh;
        
        % Update the Jaccard distance matrix
        J(u1,u2) = distancia;
        J(u2,u1) = distancia;  % The distance matrix is symmetric
    end
end
end