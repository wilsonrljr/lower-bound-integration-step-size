clear all; close all; clc;
load lorgrafico.dat
load custo.dat
h=lorgrafico(:,1);
err=lorgrafico(:,2);
tempo=h.*err;
% stem3(tempo,h,er)
% view(15,20)
figure(1)
stem(h, tempo)
figure(2)
stem(tempo, custo) 
% hold on
% plot(err)
