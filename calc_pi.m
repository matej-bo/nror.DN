n = 100000; % Število naključnih točk

[tocke_kroga, tocke_kvadrata] = mcc_pi(n);

% Izračun približne vrednosti π
priblizna_pi = 4 * size(tocke_kroga, 2) / size(tocke_kvadrata, 2);

% Izpišemo približno vrednost π
fprintf('Približna vrednost π: %f\n', priblizna_pi);
fprintf('Napaka: %f\n', abs(priblizna_pi-pi));