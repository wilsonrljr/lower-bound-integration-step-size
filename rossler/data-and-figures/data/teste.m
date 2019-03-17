ii=0;
for g=0.049%:-0.001:0.003
    BaseName='reqNdot_';
    FileName=[BaseName,num2str(g)];
    BaseName2='roriNdot_';
    FileName2=[BaseName2,num2str(g)];
    nome='temporeq_';
    nome1=[nome,num2str(g)];
%     nome2='temporori_';
%     nome3=[nome2,num2str(g)];

x=load(FileName);
y=load(FileName2);

% b=load(nome3);

er=0.001; %critério de parada
for k=1:length(x)
erm(k)=(abs(x(k)-y(k)))/(abs(x(k)+y(k))); %lower bound
end
ii=ii+1;
maxm(ii)=min(find(erm>er));
a(ii)=load(nome1);
teste1=ones(length(erm),1)*er;
i=length(x);
figure(1)
clf
plot(x,'-k')
hold on
plot(y,'--k')
xlabel('n')
ylabel('G(X_n), H(X_n)')

figure(2)
semilogy(1:i,erm(1:i),'o-k')
hold on
semilogy(1:i,teste1(1:i))
ylabel('log_{10}(\epsilon_{\alpha,n})')
xlabel('n')

end