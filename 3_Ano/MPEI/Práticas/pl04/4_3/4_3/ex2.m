
[Set, users, Nu] = criar_conjuntos("u.data");

J = calcular_distancia_Jaccard(Set,Nu); % J stores the Jaccard distances

threshold = 0.4;
similar = pares_similares(J,threshold,users,Nu);

%printar resultados
N = length(similar);
for k= 1:N,
  fprintf("Distance: %f -> user 1: %d ; user 2: %d\n",similar(k,3),similar(k,1),similar(k,2));
end