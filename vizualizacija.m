radij = 1; % Radij kroga
stevilo_tock = 1000; % Število naključnih točk

% Generiranje naključnih točk znotraj kvadrata
x_kvadrat = 2 * radij * (rand(1, stevilo_tock) - 0.5);
y_kvadrat = 2 * radij * (rand(1, stevilo_tock) - 0.5);

% Preverjanje, ali so točke znotraj kroga
razdalja_kvadrat = x_kvadrat.^2 + y_kvadrat.^2;

% Izračun približne vrednosti π
priblizna_pi = 4 * sum(razdalja_kvadrat <= radij^2) / stevilo_tock;

% Povprečje približka za π
povprecje_pi = mean(priblizna_pi);

% Narišemo točke znotraj kroga v rdeči barvi z oznako "o"
scatter(x_kvadrat(razdalja_kvadrat <= radij^2), y_kvadrat(razdalja_kvadrat <= radij^2), 'r', 'o');

% Narišemo točke zunaj kroga v modri barvi z oznako "x"
hold on;
scatter(x_kvadrat(razdalja_kvadrat > radij^2), y_kvadrat(razdalja_kvadrat > radij^2), 'b', 'x');

% Narišemo krog
theta = 0:0.01:2*pi;
kroznica_x = radij * cos(theta);
kroznica_y = radij * sin(theta);
xlabel('X');
ylabel('Y');
legend('Znotraj', 'Zunaj', 'Krožnica');
plot(kroznica_x, kroznica_y, 'k');

% Nastavitve grafa
axis equal; % Ohranimo razmerje enakih razdalj na obeh oseh
% Odstranimo ime grafa (naslov)
title('Raztros točk');


% Izpišemo povprečje približka za π
disp(['Povprečna vrednost π: ' num2str(povprecje_pi)]);
fprintf('Napaka: %f\n', abs(priblizna_pi-pi));
