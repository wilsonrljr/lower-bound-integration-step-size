%{
Article: THE LOWER BOUND ERROR AS AN AUXILIARY TECHNIQUE TO SELECT THE
INTEGRATION STEP-SIZE IN THE SIMULATION OF CHAOTIC SYSTEMS

download: https://www.researchgate.net/publication/331824062_The_Lower_Bound_Error_as_an_Auxiliary_Technique_to_Select_the_Integration_Step-size_in_the_Simulation_of_Chaotic_Systems

Uso: %arquivo para plotar a evolução do errro relativo das pseudo-órbitas

Other m-files required: rk4.m, rk5.m, rossler.m, executar.m, grafico.m
Subfunctions: none
See also: rk4.m, rk5.m, rossler.m, Rplot.m
Authors: Wilson Rocha {Lacerda Junior} and Samir Angelo Milani Martins
and Erivelton Geraldo Nepomuceno
Website: http://www.ufsj.edu.br/gcom

Please send suggestions for improvement of the above code
to Wilson Rocha at this email address: wilsonrljr@outlook.com

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

------------- BEGIN CODE --------------
%}
ii=0;
for g=0.09:-0.001:0.003
    BaseName='reqNdot_';
    FileName=[BaseName,num2str(g)];
    BaseName2='roriNdot_';
    FileName2=[BaseName2,num2str(g)];
    
    x=load(FileName);
    y=load(FileName2);
    
    er=0.001; %crit�rio de parada
    for k=1:length(x)
        erm(k)=(abs(x(k)-y(k)))/(abs(x(k)+y(k))); %lower bound
    end
    ii=ii+1;
    maxm(ii)=min(find(erm>er))
    teste=ones(length(erm),1)*er;
    i=length(x);
    
    
    
    
    
    
    
    %i=5000;
    % figure(1) % plota a compara��o entre as equivalencias
    % clf
    % plot(x,'-k')
    % hold on
    % plot(y,'--k')
    % xlabel('n')
    % ylabel('G(X_n), H(X_n)')
    %
    % figure(2) %plota o lower bound
    % semilogy(1:i,erm(1:i),'o-k')
    % hold on
    % semilogy(1:i,teste(1:i))
    % ylabel('log_{10}(\epsilon_{\alpha,n})')
    % xlabel('n')
    %clear all; clc; close all;
end