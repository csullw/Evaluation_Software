function F=GRA1(R)
% 计算备选方案与负理想解的灰色关联系数矩阵
[m,n]=size(R);  
a=min(R);     
A=ones(m,1)*a;
S=R-A;
P=min(min(S));
N=max(max(S));
CON=(P+0.5*N)*ones(m,n);
VAR=S+0.5*N*ones(m,n);
F=CON./VAR;