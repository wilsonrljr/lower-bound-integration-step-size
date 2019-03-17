%{
Article: THE LOWER BOUND ERROR AS AN AUXILIARY TECHNIQUE TO SELECT THE
INTEGRATION STEP-SIZE IN THE SIMULATION OF CHAOTIC SYSTEMS

download: https://www.researchgate.net/publication/331824062_The_Lower_Bound_Error_as_an_Auxiliary_Technique_to_Select_the_Integration_Step-size_in_the_Simulation_of_Chaotic_Systems

Uso: %arquivo para plotar a evolução do errro relativo das pseudo-órbitas

Other m-files required: rk4.m, rk5.m, duffing.m, executar.m, grafico.m
Subfunctions: none
See also: rk4.m, rk5.m, duffing.m, Dplot.m
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

clear;
clc;
close all;

load dot05eqn.dat
load dot05orin.dat

x = dot05eqn;
y = dot05orin;

er = 0.001;
for k = 1:length(x)
    erm(k) = (abs(x(k) - y(k)))/(abs(x(k) + y(k)));
end
maxm = min(find(erm > er));
teste = ones(length(erm), 1)*er;
i = length(x);
figure(1)
clf
plot(x, '-k')
hold on
plot(y, '--k')
xlabel('n')
ylabel('G(X_n), H(X_n)')
figure(2)
semilogy(1:i, erm(1:i), 'o-k')
hold on
semilogy(1:i, teste(1:i))
ylabel('log_{10}(\epsilon_{\alpha,n})')
xlabel('n')