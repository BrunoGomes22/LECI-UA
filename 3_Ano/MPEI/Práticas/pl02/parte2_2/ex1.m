%% a)
% Sx = {1,2,3,4,5,6}
% px(xi) = 1/6

xi = 1:6; 
p=ones(1,6)/6;
stem(xi,p);
xlabel("x_i");
ylabel("p(x_i)")
grid on;
axis;
axis([0.5 6.5 -0.05 0.2]);

%% b)

%funcao distribuicao acumulada Fx = 0 se x<1 e Fx = 1 se x>6
Fx = cumsum([0 0 p 0 0]);
stairs([-1 0 xi 7 8],Fx);
axis([-1.5 8.5 -0.005 1.1]);