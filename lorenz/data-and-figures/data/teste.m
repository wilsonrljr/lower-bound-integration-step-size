ii=0;
for g=0.09:-0.001:0.003
    nome='tempoleq_';
    nome1=[nome,num2str(g)];
ii=ii+1;
a(ii)=load(nome1);
end