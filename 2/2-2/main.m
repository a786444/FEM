clear 
clc
filename='input1-2.txt';
[ndime,ntrac,mate,trac_force,trac_coor,nelnd]=ReadData(filename);
iteration_max = 200;
h = 5.5;
filename = 'p01_h04';
[p,t] = p01_demo(iteration_max,h);
plotmesh(p,t,filename);
triangulation_l2q('p01_h04');
[pl2q,tl2q]=ReadNodes('p01_h04_l2q',ndime,nelnd);
[ndime,nnode,nelem,nelnd,npres,pres,trac_nodes,trac]=Attributes(pl2q,tl2q,ntrac,trac_coor,trac_force);
[modk,modr]=ModMatrix(ndime,nnode,nelem,nelnd,npres,ntrac,mate,pl2q,tl2q,pres,trac);
u=modk\modr
Plot(nelem,pl2q,tl2q,nnode,ndime,u)