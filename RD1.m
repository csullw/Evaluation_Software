function Result=RD1(A)
% 计算各方案与负理想解的灰色关联度向量
m=size(A,1);
B=A(1:m-1,:);
W=A(m,:);
MT=GRA1(B); % 调用GRA1函数
Result=MT*W';