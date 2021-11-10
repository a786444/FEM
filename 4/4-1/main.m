clear 
clc
filename='input4-1.txt';
[ndime,ntrac,mate,trac_force,trac_coor]=ReadData(filename);
iteration_max = 200;
 filename = 'q03';
 [p,t] = q03_demo(iteration_max);
 plotmesh(p,t,filename);
 [ndime,nnode,nelem,nelnd,npres,pres,trac_nodes,trac]=Attributes(p,t,ntrac,trac_coor,trac_force);
 [modk,modr]=ModMatrix(ndime,nnode,nelem,nelnd,npres,ntrac,mate,p,t,pres,trac);
 u=modk\modr
[elemss,nodess]=stress(ndime,nelnd,mate,nelem,p,u,t);