clear 
clc
filename='input1-1.txt';
[ndime,nnode,nelem,nelnd,npres,ntrac,mate,coor,conn,pres,trac,thickness]=ReadData(filename);
% kglob=GlobStiff(nelem,nnode,mate,coor,conn,nelnd,ndime);
% rglob=GlobTrac(ndime,nnode,ntrac,trac);
%Plot(nelem,coor,conn,nnode,ndime)
[modk,modr]=ModMatrix(ndime,nnode,nelem,nelnd,npres,ntrac,mate,coor,conn,pres,trac);
u=modk\modr
Plot(nelem,coor,conn,nnode,ndime,u)