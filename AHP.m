function [Q]=AHP(B)
%QΪȨֵ��BΪ�ԱȾ���

%�����б����B
[n,m]=size(B);
%�б���������ȫһ����
if n==m
    flag=0;%�����жϾ����Ƿ����һ����
    for i=1:n
        for j=1:n
            if B(i,j)*B(j,i)~=1
                iS=num2str(i);
                jS=num2str(j);
                b_1=strcat('B(',iS,',',jS,')');
                b_2=strcat('B(',jS,',',iS,')');
                S=strcat(b_1,'*',b_2,'~=1');
                msgbox(strcat('�жϾ��󲻾���һ���ԣ����У�',S));
                flag=1;
                break;
            end
        end
        if flag
            break;
        end
    end
    if ~flag
    %������ֵ�������ҵ��������ֵ��Ӧ����������
        [V,D]=eig(B);
        tz=max(D);
        tzz=max(tz);
        c1=find(tz(1,:)==max(tz));
        tzx=V(:,c1);%��������
        %Ȩ
        quan=zeros(n,1);
        for i=1:n
            quan(i,1)=tzx(i,1)/sum(tzx);
        end
        %һ���Լ���
        CI=(tzz-n)/(n-1);
        RI=[0,0,0.58,0.9,1.12,1.24,1.32,1.41,1.45,1.49,1.52,1.54,1.56,1.58,1.59];
        %�ж��Ƿ�ͨ��һ���Լ���
        CR=CI/RI(1,n);
        if CR>=0.1
            msgbox('�жϾ���û��ͨ��һ���Լ��飡');
        else
            msgbox('�жϾ���ͨ��һ���Լ��飡');
            Q=quan;
        end
    end
else
    %msgbox('�жϾ���Ӧ�Ƿ���')
end

