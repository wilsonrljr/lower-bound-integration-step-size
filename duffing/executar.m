%{
Article: THE LOWER BOUND ERROR AS AN AUXILIARY TECHNIQUE TO SELECT THE
INTEGRATION STEP-SIZE IN THE SIMULATION OF CHAOTIC SYSTEMS

download: https://www.researchgate.net/publication/331824062_The_Lower_Bound_Error_as_an_Auxiliary_Technique_to_Select_the_Integration_Step-size_in_the_Simulation_of_Chaotic_Systems


Uso: Essa rotina gera os dados do modelo de Duffing. Ver também: Dplot.m

Other m-files required: rk4.m, rk5.m, lorenz.m
Subfunctions: none
MAT-files required: none
See also: rk4.m, rk5.m, duffing.m, Dplot.m
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

for g = 0.09:-0.001:0.003
    tic
    % parametros do modelo de duffing
    a = 7.5;
    b = 0.05;
    
    %condi��es iniciais
    y0 = [3; 4];
    
    dt = g; %passo de integra��o
    int = [0:dt:1000]; %intervalo de simula��o
    ti = pi/60;
    t = (0:1:1000)*ti; %para a fun��o cos(t)
    Y(:, 1) = y0; %inicializa o vetor das saidas
    yin = y0;
    for i = 1:length(int)
        tempo = i*dt;
        ysaida = rk4(@(t,y)duffing(t,y,a,b),dt,tempo,yin);
        Y = [Y ysaida];
        yin = ysaida;
    end
    data = Y(1, :);
    BaseName = 'eqNdot_';
    FileName = [BaseName, num2str(g)];
    save(FileName, 'data', '-ascii') % for variable X
    tempo = toc;
    nome = 'tempodeqdot_';
    tempodeq = [nome, num2str(g)];
    save(tempodeq, 'tempo', '-ascii') % for variable X
    clear; close all; clc;
    
end
%plot(Y(1,:),Y(2,:),'r')

%save('dot05eqn.dat','data','-ascii')