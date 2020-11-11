clc;clear;close all;
%% Q can be generate by Q = Cu,where u is N(0,1),then C is 
%% the cholesky factorization of Q
Q = [25 16;16 49];
C = chol(Q).';
u = zeros(2,10000);
for t=1:1:10000
   u(:,t) = randn(2,1) ;
   s(:,t) = C*u(:,t);
end
Q11 = sum(s(1,:).*s(1,:))/10000
Q12 = sum(s(1,:).*s(2,:))/10000
Q21 = sum(s(2,:).*s(1,:))/10000
Q22 = sum(s(2,:).*s(2,:))/10000

example1 = randn(2,100);
sum(example1(1,:).*example1(2,:))/100