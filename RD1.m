function Result=RD1(A)
% ����������븺�����Ļ�ɫ����������
m=size(A,1);
B=A(1:m-1,:);
W=A(m,:);
MT=GRA1(B); % ����GRA1����
Result=MT*W';