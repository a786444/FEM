clear 
clc
filename='input4-2.txt';
[ndime,ntrac,mate,trac_force,trac_coor,nelnd]=ReadData(filename);
iteration_max = 200;
 filename = 'q03';
 [p,t] = q03_demo(iteration_max);
 plotmesh(p,t,filename);
 tet_mesh_l2q ( 'q03' );
 [pl2q,tl2q]=ReadNodes('q03_l2q',ndime,nelnd);
 [ndime,nnode,nelem,nelnd,npres,pres,trac_nodes,trac]=Attributes(pl2q,tl2q,ntrac,trac_coor,trac_force);
 [modk,modr]=ModMatrix(ndime,nnode,nelem,nelnd,npres,ntrac,mate,pl2q,tl2q,pres,trac);
 u=modk\modr
[elemss,nodess]=stress(ndime,nelnd,mate,nelem,pl2q,u,tl2q);