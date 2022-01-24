function Rst=Scell_create(n)
%字符元胞数组生成函数
solu_cell={};
for i=1:n
    s_temp=num2str(i);
    solu_cell{i}=strcat('方案',s_temp);
end
Rst=solu_cell;
