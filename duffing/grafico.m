clear
close all; 
clc;
format long
load dufgrafico.dat
h = dufgrafico(:, 1);
err = dufgrafico(:, 2);
tempo = h.*err;
% [mat1,padded1] = vec2mat(h,1);
% [mat2,padded2] = vec2mat(err,1);
% [mat3,padded3] = vec2mat(tempo,1);
stem(h, tempo)
%view(15,20)
% m=[h err tempo]
% surf(m)