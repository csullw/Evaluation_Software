function f=TG(ur)
% ur����u������r������ɵľ���
n=size(ur,2); % ��ȡ����ur������������u��r��ά����
u=ur(1,:);    % ��ȡ����u
r=ur(2,:);    % ��ȡ����r
u1=u./sum(u);
r1=r./sum(r);
Hu=sum(abs(u1.*log2(u1.*n))+abs((1/n).*log2(1./n*u1)))/2;
Hr=sum(abs(r1.*log2(r1.*n))+abs((1/n).*log2(1./n*r1)))/2;
a=Hu/(Hu+Hr);
f=a.*u+(1-a).*r;% ���������Topsis-GRA�ľ��߶�
