%% a)
    %a1    a3   a4   a5
a = [0.2, 0.3, 0.1, 0.45]; %nao existe a2
%estado 6 é a meta

T(1,1) = 0;
T(2,1) = a(1);
T(3,1) = 0;
T(4,1) = 0;
T(5,1) = 1 - a(1);
T(6,1) = 0;

T(1,2) = 0;
T(2,2) = 0;
T(3,2) = 0;
T(4,2) = 0;
T(5,2) = 1;
T(6,2) = 0;

T(1,3) = 0;
T(2,3) = 0;
T(3,3) = 0;
T(4,3) = a(2);
T(5,3) = 1-a(2);
T(6,3) = 0;

T(1,4) = 0;
T(2,4) = 0;
T(3,4) = a(3);
T(4,4) = 0;
T(5,4) = 0;
T(6,4) = 1 - a(3);

T(1,5) = 0;
T(2,5) = 0;
T(3,5) = a(4);
T(4,5) = 1 - a(4);
T(5,5) = 0;
T(6,5) = 0;

T(1,6) = 0;
T(2,6) = 0;
T(3,6) = 0;
T(4,6) = 0;
T(5,6) = 0;
T(6,6) = 1;

T

%% b)
% trajeto  mais pequeno 1->5->4->6

prob = T(5,1)*T(4,5)*T(6,4);

% em alternativa
% states = [1, 5, 4, 6];
% p = 1;
% for i = 1:length(states)-1
%     cstate = states(i);
%     nstate = states(i+1);
%     p = p * T(nstate, cstate);
% end

%% c)
% precisamos da matriz F
% primeiro temos de obter a matriz Q (temos apenas um estado absorvente)
% que é a Meta

Q = T(1:5,1:5);
F = (eye(5) - Q)^-1;

x1 = [1 0 0 0 0]';
fprintf("passos antes da absorcao comecando no E1 = %.2f\n", sum(F*x1));


