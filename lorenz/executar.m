%{
Article: THE LOWER BOUND ERROR AS AN AUXILIARY TECHNIQUE TO SELECT THE
INTEGRATION STEP-SIZE IN THE SIMULATION OF CHAOTIC SYSTEMS

download: https://www.researchgate.net/publication/331824062_The_Lower_Bound_Error_as_an_Auxiliary_Technique_to_Select_the_Integration_Step-size_in_the_Simulation_of_Chaotic_Systems


Uso: Essa rotina gera os dados do modelo de Lorenz. Ver também: Lplot.m

Other m-files required: rk4.m, rk5.m, lorenz.m
Subfunctions: none
MAT-files required: none
See also: rk4.m, rk5.m, lorenz.m, Lplot.m
Authors: Wilson Rocha {Lacerda Junior} and Samir Angelo Milani Martins
and Erivelton Geraldo Nepomuceno
Website: http://www.ufsj.edu.br/gcom

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
    % Parametros do modelo de Lorenz
    sigma = 10;
    beta = 8/3;
    rho = 0.5;
    
    % Condições iniciais
    y0=[1; 0.5; 0.9];
    
    %
    dt =g;
    int=[0:dt:30];
    
    Y(:,1)=y0;
    yin = y0;
    for i=1:length(int)
        tempo = i*dt;
        yout = rk4(@(t,y)lorenz(t,y,sigma,beta,rho),dt,tempo,yin);
        Y = [Y yout];
        yin = yout;
    end
    plot3(Y(1,:),Y(2,:),Y(3,:),'b')
    data=[Y(1,:); Y(2,:); Y(3,:)];
    BaseName='eri3_';
    FileName=[BaseName,num2str(g)];
    save(FileName,'data','-ascii') % for variable X
    
    tempoL=toc;
    nome='tempoeri_';
    nomedoarquivo=[nome,num2str(g)];
    save(nomedoarquivo,'tempoL','-ascii')
    clear all; close all; clc;
end