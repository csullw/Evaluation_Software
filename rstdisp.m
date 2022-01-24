function txt=rstdisp(u_old) % 用文字显示评价结果
u_new=sort(u_old,2,'descend'); % u_old为方案1~n的决策度
arr=[];%存储方案指标序列
str='';
for i=1:length(u_new)
    for j=1:length(u_old)
        if u_new(i)==u_old(j)
            arr(i)=j;
            if ~(length(arr)-length(unique(arr)))&&i<length(u_new)
                str_num=num2str(j);
                str=strcat(str,strcat('方案',str_num),' > ');
                continue;
            elseif ~(length(arr)-length(unique(arr)))&&i==length(u_new)
                str_num=num2str(j);
                str=strcat(str,strcat('方案',str_num));
            end
        end
    end
end
txt=str;
