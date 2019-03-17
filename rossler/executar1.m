%{
Article: THE LOWER BOUND ERROR AS AN AUXILIARY TECHNIQUE TO SELECT THE
INTEGRATION STEP-SIZE IN THE SIMULATION OF CHAOTIC SYSTEMS

download: https://www.researchgate.net/publication/331824062_The_Lower_Bound_Error_as_an_Auxiliary_Technique_to_Select_the_Integration_Step-size_in_the_Simulation_of_Chaotic_Systems


Uso: Essa rotina gera os dados do modelo de Rossler. Ver também: Rplot.m

Other m-files required: rk4.m, rk5.m, rossler.m
Subfunctions: none
MAT-files required: none
See also: rk4.m, rk5.m, rossler.m, Rplot.m
Authors: Wilson Rocha {Lacerda Junior} and Samir Angelo Milani Martins
and Erivelton Geraldo Nepomuceno
Website: http://www.ufsj.edu.br/gcom
Last revision: Jun 2017

Please send suggestions for improvement of the above code
to Wilson Rocha at this email address: wilsonrljr@outlook.com

------------- BEGIN CODE --------------

References:
-----------

@ARTICLE{lacerdajunioretal2018,
  AUTHOR =       {Wilson Rocha {Lacerda Junior} and Samir Angelo Milani Martins and Erivelton Geraldo Nepomuceno},
  TITLE =        {The Lower Bound Error as an Auxiliary Technique to Select the Integration Step-Size in the Simulation of Chaotic Systems},
  JOURNAL =      {Learning \& Nonlinear Models},
  pages =        {56-67},
  publisher =    {ABRICOM},
  YEAR =         {2018},
  VOLUME =       {16},
  number =       {1},
}
%}
for g=0.01%:-0.001:0.003
    tic
    a = 0.15;
    b = 0.2;
    c = 10;
    
    y0=[-1; 1; 1]; % Condi��es iniciais (localiza��es iniciais)
    dt = g;    %passo de integra��o
    int=[0:dt:40]; %intervalo da simula��o
    Y(:,1)=y0; %Criando vetor de dados da Saida
    yin = y0;
    for i=1:length(int) %loop que executa o rk4
        tempo = i*dt;
        ysaida = rk4(@(t,y)rossler(t,y,a,b,c),dt,tempo,yin);
        Y = [Y ysaida];
        yin = ysaida;
    end
    %plot3(Y(1,:),Y(2,:),Y(3,:),'r') %plota a saida em um gr�fico 3d
    %salvando uma das vari�veis (xponto nesse caso)
    data=[Y(1,:);Y(2,:);Y(3,:)];
    BaseName = 'Reri_';
    FileName=[BaseName,num2str(g)];
    save(FileName,'data','-ascii') % for variable X
    tempo=toc;
    nome='temporeq_';
    narquivo=[nome,num2str(g)];
    save(narquivo,'tempo','-ascii') % for variable X
    clear all; close all; clc;
    
end

