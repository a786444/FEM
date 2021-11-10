function [pl2q,tl2q]=ReadNodes(perfix,ndime,nelnd)
        data_node=textscan(fopen(strcat(perfix,'_nodes.txt')),'%s');
        data_conn=textscan(fopen(strcat(perfix,'_elements.txt')),'%s');
        pl2q=[];
        for i=1:length(data_node{1,1})/ndime
            pop=[str2double(data_node{1}{(i-1)*ndime+1});str2double(data_node{1}{(i-1)*ndime+2})];
            pl2q=[pl2q pop];
        end
        tl2q=[];
        for i=1:length(data_conn{1,1})/nelnd
            pop=zeros(nelnd,1);
            for j=1:nelnd
            pop(j,1)=str2double(data_conn{1}{(i-1)*nelnd+j});
            end
            tl2q=[tl2q pop];
        end
        
end