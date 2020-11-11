clc;clear;close all;
A = [1 0 0 0
    -1 1 0 0 
    0 1 0 0
    0 -1 1 0
    0 0 1 0
    0 0 -1 1
    0 0 0 1];
V = (A.'*A)
L = chol(V)
inv(V)