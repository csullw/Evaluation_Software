function Result=RD(A)
% ������������������Ļ�ɫ����������
m=size(A,1);
B=A(1:m-1,:);
W=A(m,:);
MT=GRA(B); % ����GRA����
Result=MT*W';


