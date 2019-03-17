%{
Article: THE LOWER BOUND ERROR AS AN AUXILIARY TECHNIQUE TO SELECT THE
INTEGRATION STEP-SIZE IN THE SIMULATION OF CHAOTIC SYSTEMS

download: https://www.researchgate.net/publication/331824062_The_Lower_Bound_Error_as_an_Auxiliary_Technique_to_Select_the_Integration_Step-size_in_the_Simulation_of_Chaotic_Systems

Uso: Essa rotina gera os dados do modelo de rossler. Ver também: Rplot.m

Other m-files required: rk4.m, rk5.m, rossler.m
Subfunctions: none
MAT-files required: none
See also: rk4.m, rk5.m, rossler.m, Rplot.m
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

% uncomment the lines below to change the interval extension
% function dy = rossler(t,y,a,b,c)
% %modelo de rossler (V1)
% dy = [
% -(y(2)+y(3)); % =dx/dt
% y(1)+a*y(2); % =dy/dt
% b+y(3)*y(1)-y(3)*c; % = dz/dt
% ];

function dy = rossler(t,y,a,b,c)
%modelo de rossler (equivalencia)
dy = [
    -y(2)-y(3);
    y(1)+a*y(2);
    b+y(3)*(y(1)-c);
    ];