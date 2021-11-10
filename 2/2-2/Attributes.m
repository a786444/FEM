function [ndime,nnode,nelem,nelnd,npres,pres,trac_nodes,trac]=Attributes(pl2q,tl2q,ntrac,trac_coor,trac_force)
ndime=size(pl2q,1);
nnode=length(pl2q);
nelem=length(tl2q);
nelnd=size(tl2q,1);
pres_nodes=find(pl2q(1,:)==60);
npres=length(pres_nodes)*2;
pres=zeros(ndime+1,npres);
k=0;
for i=1:ndime:npres
    k=k+1;
    pres(1,i:i+1)=pres_nodes(k);
    for j=0:ndime-1
        pres(2,i+j)=j+1;
    end
end
trac_nodes=zeros(1,ntrac);
for i=1:ntrac
    trac_nodes(i)=find(pl2q(1,:)==trac_coor(1,i) & pl2q(2,:)==trac_coor(2,i));
end
trac=[trac_nodes;trac_force];
end