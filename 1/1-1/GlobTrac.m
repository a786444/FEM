function rglob=GlobTrac(ndime,nnode,ntrac,trac)
rglob=zeros(ndime*nnode,1);
for j=1:ntrac
    ir=(trac(1,j)-1)*2;
    for i=1:2
    rglob(ir+i)=trac(i+1,j);
    end
end
end