function Result=RD(A)
% 计算各方案与正理想解的灰色关联度向量
m=size(A,1);
B=A(1:m-1,:);
W=A(m,:);
MT=GRA(B); % 调用GRA函数
Result=MT*W';


