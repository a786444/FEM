function nconn=Nconn(nelnd,nelem,conn)
nconn=zeros(nelnd,nelem);
for iel=1:nelem
    j=1;
    for i=1:2:nelnd
        nconn(j,iel)=conn(i,iel);
        j=j+1;
    end
    for i=2:2:nelnd
        nconn(j,iel)=conn(i,iel);
        j=j+1;
    end
end
end