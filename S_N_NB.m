function [y] = S_N_NB(mu, sigma, r, p, M)
    %M - the size of vector; number of simulated S
    %set r huge, so we should get similar results as in poisson
%     r = 1000;
%     p = lambda / (lambda + r);
    S = zeros(1,M);
    for i = 1:M
        N = nbinrnd(r, p);
        X = lognrnd(mu,sigma, 1, N);
        S(i) = sum(X);
 
    end
    y = S;
%     theo_ES = lambda .* exp(mu + sigma.^2 ./ 2);
%     emp_ES = mean(y);
    %diff = abs(emp_ES - theo_ES);
end