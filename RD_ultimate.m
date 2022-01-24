function Result=RD_ultimate(A)
% 计算最终的灰色关联度向量
r=RD(A);  % 调用RD函数
r1=RD1(A);% 调用RD1函数
r_ultimate=r./(r+r1);
Result=r_ultimate;
