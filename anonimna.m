


radij = 1; % Radij kroga
stevilo_tock = 100; % Število točk na loku krožnice

% Definicija anonimne funkcije
lok_kroznice = @(radij, kot) [radij * cos(kot); radij * sin(kot)];

% Naključni koti na loku krožnice
koti = 2 * pi * rand(1, stevilo_tock);

% Izračun koordinat točk na loku krožnice
tocke_na_loku = lok_kroznice(radij, koti);

% Izpišite točke na loku krožnice
disp('Koordinate točk na loku krožnice:');
disp(tocke_na_loku);

