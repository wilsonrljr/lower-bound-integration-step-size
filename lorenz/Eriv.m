clear all; close all; clc;
g = 0.01;
BaseName = 'eri_';
FileName = [BaseName,num2str(g)];
x = load(FileName);
x = x(:,1:10000);
sigma = 16;
beta = 4;
rho = 45.92;
% sigma = 10;
% beta = 8/3;
% rho = 0.5;
dx = x(1,:);
dy = x(2,:);
dz = x(3,:);

plot3(dx,dy,dz)

aux = max(size(dx));
for k = 1:length(dx) -1
    J = [-sigma sigma 0; beta-dz(k) -1 -dx(k); dy(k) dx(k) -rho];
    NJ(k) = norm(J);
end

for i = 2:length(dx)
    dados = [dx(i); dy(i); dz(i)];
    NFX(i) = norm(dados);
end
NFX = NFX(1,2:end);
for j = 1 : length(dx)-1
    dadosx = [dx(j);  dy(j); dz(j)];
    NX(j) = norm(dadosx);
end

for o = 1: length(NX) - 1 
    lyap(o) = NJ(o)/(NFX(o)/(NX(o)));
end
%plot(lyap);
med = mean (log2(lyap))

    
    

