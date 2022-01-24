function f=TG(ur)
% ur是由u向量和r向量组成的矩阵
n=size(ur,2); % 获取矩阵ur的列数（向量u和r的维数）
u=ur(1,:);    % 获取向量u
r=ur(2,:);    % 获取向量r
u1=u./sum(u);
r1=r./sum(r);
Hu=sum(abs(u1.*log2(u1.*n))+abs((1/n).*log2(1./n*u1)))/2;
Hr=sum(abs(r1.*log2(r1.*n))+abs((1/n).*log2(1./n*r1)))/2;
a=Hu/(Hu+Hr);
f=a.*u+(1-a).*r;% 计算出最终Topsis-GRA的决策度
