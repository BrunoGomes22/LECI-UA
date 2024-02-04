%% a)

% no papel

%% b)

%    O   F    D    U

T = [0.4 0.25 0.2 0.25
     0.2 0.25 0.2 0.25
     0.2 0.25 0.4 0.25
     0.2 0.25 0.2 0.25];

%% c)

x0 = [1 0 0 0]';

res = T^7*x0;

fprintf("a probabilidade é de %0.4f\n",res(2));

%% d)

ncols = size(T,2);
nlines = size(T,1);

M = [T - eye(size(T))
    ones(1,ncols)];

b = [zeros(nlines,1); 1];

u = M \b;

fprintf("a probabilidade limite do cenário escolhido ser oceano é %0.4f\n", u(1));

%% e)

prob2D = 0.25*0.4;
x = [0 0 prob2D 0]';
probDDeF = T^4*x;
probDDeFF = probDDeF(2)*0.25;
disp(probDDeFF);
