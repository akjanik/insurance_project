function [y, theo_ES, emp_ES] = S_N_poiss(mu, sigma, lambda, M)
    %M - the size of vector; number of simulated S
    S = zeros(1,M);
    for i = 1:M
        N = poissrnd(lambda);
        X = lognrnd(mu,sigma, 1, N);
        S(i) = sum(X);
    end
    y = S;
    theo_ES = lambda .* exp(mu + sigma.^2 ./ 2);
    emp_ES = mean(y);
    %diff = abs(emp_ES - theo_ES);
end