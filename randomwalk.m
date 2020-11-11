clc;clear;close all;

step = 5000;
for i = 1:1:5000
    total(i) = sum(randi([0 1],1,step)*2) - step;
end
mean(total)
var(total)
table = tabulate(total);
plot(table(:,1),table(:,2));