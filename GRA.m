function F=GRA(R) 
%���㱸ѡ�������������Ļ�ɫ����ϵ������
[m,n]=size(R); 
a=max(R);
A=ones(m,1)*a;
S=A-R;
P=min(min(S));
N=max(max(S));
CON=(P+0.5*N)*ones(m,n);
VAR=S+0.5*N*ones(m,n);
F=CON./VAR;




