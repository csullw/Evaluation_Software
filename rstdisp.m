function txt=rstdisp(u_old) % ��������ʾ���۽��
u_new=sort(u_old,2,'descend'); % u_oldΪ����1~n�ľ��߶�
arr=[];%�洢����ָ������
str='';
for i=1:length(u_new)
    for j=1:length(u_old)
        if u_new(i)==u_old(j)
            arr(i)=j;
            if ~(length(arr)-length(unique(arr)))&&i<length(u_new)
                str_num=num2str(j);
                str=strcat(str,strcat('����',str_num),' > ');
                continue;
            elseif ~(length(arr)-length(unique(arr)))&&i==length(u_new)
                str_num=num2str(j);
                str=strcat(str,strcat('����',str_num));
            end
        end
    end
end
txt=str;
