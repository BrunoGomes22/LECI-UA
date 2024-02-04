%% a)

%      SOL NUVENS CHUVA
%
% SOL
%
% NUVENS
%
% CHUVA

T = [0.7 0.2 0.3
     0.2 0.3 0.3
     0.1 0.5 0.4];
%% b)

x0 = [1 0 0]'; % sol no primeiro dia

x1 = T*x0; % sol no segundo dia
x2 = T*x1; % solo no terceiro

prob = x1(1) * x2(1);

%% c)

% x2 = T*x0;
% w = x2/(1-x2(3)); % w vai ser um estado que vai dar disregard ao estado das nuvens
% x3 = T*w;
% p = (1-x2(3)) * (x3(1)+x3(2)) maneira estranha de fazer

% Probabilities of not raining on day 2
p_ss = T(1,1); % Sun on day 1 -> Sun on day 2
p_sc = T(1,2); % Sun on day 1 -> Clouds on day 2

% Probabilities of not raining on day 3
p_sss = p_ss * T(1,1); % Sun on day 2 -> Sun on day 3
p_ssc = p_ss * T(1,2); % Sun on day 2 -> Clouds on day 3
p_scs = p_sc * T(2,1); % Clouds on day 2 -> Sun on day 3
p_scc = p_sc * T(2,2); % Clouds on day 2 -> Clouds on day 3

% Total probability of not raining on day 3
p_no_rain_day3 = p_sss + p_ssc + p_scs + p_scc

%% d)

diasSol = 1;
diasNuvens = 0;
diasChuva = 0;

for i = 1:30
    p = T^i*x0;
    diasSol = diasSol + p(1);
    diasNuvens = diasNuvens + p(2);
    diasChuva = diasChuva + p(3);
end
fprintf("%.2f dias de sol\t%.2f dias de nuvens\t%.2f dias de chuva\n", diasSol, diasNuvens, diasChuva);

%% e)

diasSol2 = 0;
diasNuvens2 = 0;
diasChuva2 = 1;
x0 = [0 0 1]';
for i = 1:30
    p = T^i*x0;
    diasSol2 = diasSol2 + p(1);
    diasNuvens2 = diasNuvens2 + p(2);
    diasChuva2 = diasChuva2 + p(3);
end
fprintf("%.2f dias de sol\t%.2f dias de nuvens\t%.2f dias de chuva\n", diasSol2, diasNuvens2, diasChuva2);

%% f)
fprintf("Quando o primeiro dia é de sol: %.2f dias a sofrer\n", diasSol * 0.1 + diasNuvens * 0.3 + diasChuva * 0.5);
fprintf("Quando o primeiro dia é de chuva: %.2f dias a sofrer\n", diasSol2 * 0.1 + diasNuvens2 * 0.3 + diasChuva2 * 0.5);



