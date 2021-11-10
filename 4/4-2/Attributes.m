function [ndime,nnode,nelem,nelnd,npres,pres,trac_nodes,trac]=Attributes(p,t,ntrac,trac_coor,trac_force)
ndime=size(p,1);
nnode=length(p);
nelem=length(t);
nelnd=size(t,1);
pres_nodes=find(round(p(1,:))==0);
npres=length(pres_nodes)*3;
pres=zeros(ndime+1,npres);
k=0;
for i=1:ndime:npres
    k=k+1;
    pres(1,i:i+2)=pres_nodes(k);
    for j=0:ndime-1
        pres(2,i+j)=j+1;
    end
end
trac_coor=round(trac_coor);
trac_nodes=zeros(1,ntrac);
for i=1:ntrac
    trac_nodes(i)=find(round(p(1,:))==trac_coor(1,i) & round(p(2,:))==trac_coor(2,i) & round(p(3,:))==trac_coor(3,i));
end
trac=[trac_nodes;trac_force];
end