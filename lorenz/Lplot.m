%{
Article: THE LOWER BOUND ERROR AS AN AUXILIARY TECHNIQUE TO SELECT THE
INTEGRATION STEP-SIZE IN THE SIMULATION OF CHAOTIC SYSTEMS

download: https://www.researchgate.net/publication/331824062_The_Lower_Bound_Error_as_an_Auxiliary_Technique_to_Select_the_Integration_Step-size_in_the_Simulation_of_Chaotic_Systems

Uso: %arquivo para plotar a evolução do errro relativo das pseudo-órbitas

Other m-files required: rk4.m, rk5.m, lorenz.m, executar.m, grafico.m
Subfunctions: none
See also: rk4.m, rk5.m, lorenz.m, Lplot.m
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
for g=0.01%:-0.001:0.003
    BaseName='leqdotNOVO_';
    FileName=[BaseName,num2str(g)];
    BaseName2='loridotNOVO_';
    FileName2=[BaseName2,num2str(g)];
    
    x=load(FileName);
    y=load(FileName2);
    
    er=0.001;
    for k=1:length(x)
        erm(k)=(abs(x(k)-y(k)))/(abs(x(k)+y(k)));
    end
    ii=ii+1;
    maxm(ii)=min(find(erm>er))
    teste=ones(length(erm),1)*er;
    i=length(x);
end