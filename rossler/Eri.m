clear all; close all; clc;
g = 0.01;
BaseName = 'Reri_';
FileName = [BaseName,num2str(g)];
x = load(FileName);

a = 0.15;
b = 0.2;
c = 10;

dx = x(1,:);
dy = x(2,:);
dz = x(3,:);

%plot3(dx,dy,dz)

for k = 1:length(dx) -1
    J = [0 -1 -1; 1 a 0;dz(k) 0 dx(k)-c];
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
med = mean (log(lyap))

    
    

