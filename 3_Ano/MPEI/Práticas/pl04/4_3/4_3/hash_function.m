function hc = hash_function(valor, params, i)
%UNTITLED2 Summary of this function goes here

r = params.a(i);
b = params.b(i);
p = params.p;

hc = mod(valor * r + b, p);



end