function F=GRA1(R)
% ���㱸ѡ�����븺�����Ļ�ɫ����ϵ������
[m,n]=size(R);  
a=min(R);     
A=ones(m,1)*a;
S=R-A;
P=min(min(S));
N=max(max(S));
CON=(P+0.5*N)*ones(m,n);
VAR=S+0.5*N*ones(m,n);
F=CON./VAR;