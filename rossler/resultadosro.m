clear all; close all; clc;
load resultadosro.txt
h=resultadosro(:,1);
err=resultadosro(:,2);
tempo=h.*err;
stem3(h,err,tempo)
% hold on
% plot(err)
