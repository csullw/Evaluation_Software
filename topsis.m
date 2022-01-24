function u=topsis(H)
%H矩阵为量纲化后的矩阵R和权重向量w组成
[m,n]=size(H);
R=H(1:m-1,1:n);% 获取量纲化后的矩阵
w=H(m,:);    % 获取权重向量
m1=size(R,1);  % 获取矩阵R的行数
r0=min(R);     %获取负理想优度向量
R0=ones(m1,1)*r0;% 构建m1行n列的零矩阵
r1=max(R);     %获取理想优度向量
R1=ones(m1,1)*r1; % 构建m1行n列的元素全为1的矩阵
a=sqrt(((R-R0).^2)*w');
b=sqrt(((R1-R).^2)*w');
c=1+(b./a).^2;
u=1./c;%返回topsis方法的决策度向量
