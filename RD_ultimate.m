function Result=RD_ultimate(A)
% �������յĻ�ɫ����������
r=RD(A);  % ����RD����
r1=RD1(A);% ����RD1����
r_ultimate=r./(r+r1);
Result=r_ultimate;
