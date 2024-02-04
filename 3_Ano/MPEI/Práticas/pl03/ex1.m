%% a)

    %~F  %F
T = [0.7 0.8   %~F
     0.3 0.2]; % F

x0 = [1 0]'; %transposta

x2 = (T^2) * x0;

x2(1,1) %prob de não faltar

%% b)

x0 = [0 1]';

x2 = (T^2) * x0;

x2(1,1) %prob de faltar

%% c)

%temos 29 transiçoes 30-1

x0 = [1 0]';

x2 = (T^29) * x0;

x2(1,1) %prob de n faltar

%% d)

x0 = [0.85 0.15]';

p = zeros(30,1);

for i = 1:29  %transições
    xi = (T ^ i) * x0;
    
    p(i+1) = xi(2,1); %sacar a prob de de faltar
end

figure(1)
plot([1:30],p);
