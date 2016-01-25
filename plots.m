clear all; close all;
%generate S from different distributions
% S_poiss_10 = S_N_poiss(0, 1, 10, 10000);
%  figure(1);
%  histfit(S_poiss_10, 50, 'kernel');
%  legend('lambda = 10')
%  
%  figure(2)
% S_poiss_20 = S_N_poiss(0, 1, 20, 10000);
% 
%  histfit(S_poiss_20, 50, 'kernel');
%  legend('lambda = 20')
%  
%  figure(3)
%  S_poiss_30 = S_N_poiss(0, 1, 30, 10000);
% 
%  histfit(S_poiss_30, 50, 'kernel');
%  legend('lambda = 30')
%  
%  figure(4)
%  S_poiss_100 = S_N_poiss(0, 1, 100, 10000);
% 
%  histfit(S_poiss_100, 50, 'kernel');
%  legend('lambda = 100')

%Now negative binomial case
figure(1)
S_NB_10 = S_N_NB(0, 1, 10, 0.5, 10000);
histfit(S_NB_10, 50, 'kernel');
legend('r = 10')

figure(2)
S_NB_20 = S_N_NB(0, 1, 20, 0.5, 10000);
histfit(S_NB_10, 50, 'kernel');
legend('r = 20')

figure(3)
S_NB_30 = S_N_NB(0, 1, 30, 0.5, 10000);
histfit(S_NB_30, 50, 'kernel');
legend('r = 30')

figure(4)
S_NB_100 = S_N_NB(0, 1, 100, 0.5, 10000);
histfit(S_NB_100, 50, 'kernel');
legend('r = 100')