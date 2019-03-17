clear all; close all; clc;
load lorgrafico.dat
h=lorgrafico(:,1);
err=lorgrafico(:,2);
tempo=h.*err;
% stem3(tempo,h,err)
% view(15,20)
stem3(tempo,h,err)
view(15,20)

% hold on
% plot(err)
