
function [p,t] = p01_demo(iteration_max,h)
 rng('default');
 fd = @p01_fd;
 fh = @p01_fh;
 box = [-10.0,-20.0; 60.0,10.0];
 xend=60;
 pres_nodes=[0,0];
 corner = [0 10;0 -10; 60 10;60 -10 ];
 neutral_axis=zeros(floor(xend/h),2);
 for i=1:floor(xend/h)
     neutral_axis(i,1)=h*i;
 end
 fixed=[corner;neutral_axis;pres_nodes;30,5;60 0];
 [p,t] = distmesh_2d(fd,fh,h,box,iteration_max,fixed);
 p = p.';
 t = t.';
end
