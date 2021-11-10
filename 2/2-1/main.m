clear 
clc
filename='input1-1.txt';
[ntrac,mate,trac_force,trac_coor]=ReadData(filename);
iteration_max = 200;
h = 5.5;
filename = 'p01_h04';
[p,t] = p01_demo(iteration_max,h);
%plotmesh(p,t,filename);
 [ndime,nnode,nelem,nelnd,npres,pres,trac_nodes,trac]=Attributes(p,t,ntrac,trac_coor,trac_force);
 [modk,modr]=ModMatrix(ndime,nnode,nelem,nelnd,npres,ntrac,mate,p,t,pres,trac);
u=modk\modr
Plot(nelem,p,t,nnode,ndime,u)