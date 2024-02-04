%% a)

% { um, dois, tres}
% prob da seq. "um dois" ?
% acontecimentos equiprováveis (cada evento individual é indep. dos outros)
% P (um ^ dois) = P(um) * P(dois)
% P(um) = 1/3 e P(1/3)
PA = 1/3 * 1/3;
PA = 1/9;

%% b)

%casos possíveis: 9
% um um
% um dois
% um tres
% dois dois
% dois um
% dois tres
% tres tres
% tres um
% tres dois

%casos favoráveis: 5
% um um
% um dois
% um tres
% dois um
% tres um

PB = 5/9;

%alternativa: fazer probabilidade contrária 1 - 4/9

%% c)

% ordem da seq. n interessa aqui
% P( um v dois) = P (um) + P (dois) - P (um ^ dois) = 5/9 + 5/9 - 2/9 = 8/9

PC = 8/9;

%% d)

% P("seq incluir a palavra um" | "seq inclui palavra dois") = P("incluir a
% palavra um" ^ "incluir a palavra dois") / P("incluir a palavra dois")

PD = (2/9)/(5/9);
PD = 2/5;


