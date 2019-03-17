clear all; close all; clc;
load rosgrafico.dat
h=rosgrafico(:,1);
err=rosgrafico(:,2);
tempo=h.*err;
%stem3(tempo,h,err)
%view(15,20)
stem(h,tempo,'.')
% view(15,-20)
