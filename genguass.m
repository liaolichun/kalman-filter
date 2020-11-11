clc;clear;close all;

for i=1:1:10000,
   total(i) = sum(randi([0 1],1,10000).*2 - 1)/100;
end
mean(total)
var(total)

table = tabulate(total);
plot(table(:,1),table(:,2));