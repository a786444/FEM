function kglob=GlobStiff(nelem,nnode,mate,pl2q,tl2q,nelnd,ndime)
kglob=zeros(nnode*ndime,nnode*ndime);
for j=1:nelem
    kel=ElemStif(tl2q,ndime,nelnd,pl2q,mate,j);
    for a=1:nelnd
        for i=1:ndime
            for b=1:nelnd
                for k=1:ndime
                ir=ndime*(tl2q(a,j)-1)+i;
                ic=ndime*(tl2q(b,j)-1)+k;
                kglob(ir,ic)=kglob(ir,ic)+kel(ndime*(a-1)+i,ndime*(b-1)+k);
                end
            end
        end
    end
end