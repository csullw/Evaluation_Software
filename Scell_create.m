function Rst=Scell_create(n)
%�ַ�Ԫ���������ɺ���
solu_cell={};
for i=1:n
    s_temp=num2str(i);
    solu_cell{i}=strcat('����',s_temp);
end
Rst=solu_cell;
