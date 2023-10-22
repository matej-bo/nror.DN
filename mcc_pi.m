function [tocke_kroga, tocke_kvadrata] = mcc_pi(stevilo_tock)
    % Generiraj naključne točke znotraj kvadrata
    x = rand(1, stevilo_tock);
    y = rand(1, stevilo_tock);
    
    % Preveri, ali so točke znotraj kroga
    razdalja = x.^2 + y.^2;
    tocke_kroga = [x(razdalja <= 1); y(razdalja <= 1)];

    % Točke v kvadratu so vse generirane točke
    tocke_kvadrata = [x; y];