clear 
clc
filename='input3-2.txt';
[ndime,nnode,nelem,nelnd,npres,ntrac,mate,coor,conn,pres,trac]=ReadData(filename);
% kglob=GlobStiff(nelem,nnode,mate,coor,conn,nelnd,ndime);
% rglob=GlobTrac(ndime,nnode,ntrac,trac);
%Plot(nelem,coor,conn,nnode,ndime)
nconn=Nconn(nelnd,nelem,conn);
[modk,modr]=ModMatrix(ndime,nnode,nelem,nelnd,npres,ntrac,mate,coor,nconn,pres,trac);
u=modk\modr
[elemss,nodess]=stress(ndime,nelnd,mate,nelem,coor,u,conn);