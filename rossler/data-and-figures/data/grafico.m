clear all; close all; clc;
load rosgrafico.dat
load custo.dat
h=rosgrafico(:,1);
err=rosgrafico(:,2);
tempo=h.*err;
%stem3(tempo,h,err)
%view(15,20)
figure(1)
stem(h,tempo,'.')
% view(15,-20)
figure(2)
stem(tempo,custo)