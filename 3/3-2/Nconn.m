function nconn=Nconn(nelnd,nelem,conn)
nconn=zeros(nelnd,nelem);
for iel = 1:nelem
    nconn(1,iel)=conn(1,iel);
    nconn(9,iel)=conn(2,iel);
    nconn(2,iel)=conn(3,iel);
    nconn(18,iel)=conn(4,iel);
    nconn(6,iel)=conn(5,iel);
    nconn(13,iel)=conn(6,iel);
    nconn(5,iel)=conn(7,iel);
    nconn(17,iel)=conn(8,iel);
    nconn(12,iel)=conn(9,iel);
    nconn(10,iel)=conn(10,iel);
    nconn(14,iel)=conn(11,iel);
    nconn(16,iel)=conn(12,iel);
    nconn(4,iel)=conn(13,iel);
    nconn(11,iel)=conn(14,iel);
    nconn(3,iel)=conn(15,iel);
    nconn(19,iel)=conn(16,iel);
    nconn(7,iel)=conn(17,iel);
    nconn(15,iel)=conn(18,iel);
    nconn(8,iel)=conn(19,iel);
    nconn(20,iel)=conn(20,iel);
end
end