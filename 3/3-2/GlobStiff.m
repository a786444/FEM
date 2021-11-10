function kglob=GlobStiff(nelem,nnode,mate,coor,nconn,nelnd,ndime)
kglob=zeros(nnode*ndime,nnode*ndime);
for j=1:nelem
    kel=ElemStif(nconn,ndime,nelnd,coor,mate,j);
    for a=1:nelnd
        for i=1:ndime
            for b=1:nelnd
                for k=1:ndime
                ir=ndime*(nconn(a,j)-1)+i;
                ic=ndime*(nconn(b,j)-1)+k;
                kglob(ir,ic)=kglob(ir,ic)+kel(ndime*(a-1)+i,ndime*(b-1)+k);
                end
            end
        end
    end
end
end