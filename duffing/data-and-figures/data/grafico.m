clear all; close all; clc;
load dugrafico.dat
load custo.dat
h=dugrafico(:,1);
err=dugrafico(:,2);
tempo=h.*err;
% stem3(tempo,h,err)
% view(15,20)
figure(1)
stem(h,tempo)
figure(2)
stem(tempo,custo)
% hold on
% plot(err)
