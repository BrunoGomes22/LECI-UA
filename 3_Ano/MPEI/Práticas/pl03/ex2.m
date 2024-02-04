%% a)

   %A    B   c
T = [1/3 1/4 0
     1/3 11/20  1/2
     1/3 1/5 1/2];

%% b) 

%a = 2(b+c)
%b = c 
%a + b + c = 90
%a = 60
%b = 15
%c = 15

x0 = [60 15 15]'/90;  % CF/CP

%% c)

x30 = (T^30) * x0;
n = x30 * 90 % multiplicar por 90 para saber o nº aprox. de pessoas em cada grupo

%% d) 

v0 = [30 30 30]'/90;
v30 = (T^30)*v0;
n = v30 * 90


