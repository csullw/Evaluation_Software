function [Q]=AHP(B)
%Q为权值，B为对比矩阵

%导入判别矩阵B
[n,m]=size(B);
%判别矩阵具有完全一致性
if n==m
    flag=0;%用于判断矩阵是否符合一致性
    for i=1:n
        for j=1:n
            if B(i,j)*B(j,i)~=1
                iS=num2str(i);
                jS=num2str(j);
                b_1=strcat('B(',iS,',',jS,')');
                b_2=strcat('B(',jS,',',iS,')');
                S=strcat(b_1,'*',b_2,'~=1');
                msgbox(strcat('判断矩阵不具有一致性！其中：',S));
                flag=1;
                break;
            end
        end
        if flag
            break;
        end
    end
    if ~flag
    %求特征值向量，找到最大特征值对应的特征向量
        [V,D]=eig(B);
        tz=max(D);
        tzz=max(tz);
        c1=find(tz(1,:)==max(tz));
        tzx=V(:,c1);%特征向量
        %权
        quan=zeros(n,1);
        for i=1:n
            quan(i,1)=tzx(i,1)/sum(tzx);
        end
        %一致性检验
        CI=(tzz-n)/(n-1);
        RI=[0,0,0.58,0.9,1.12,1.24,1.32,1.41,1.45,1.49,1.52,1.54,1.56,1.58,1.59];
        %判断是否通过一致性检验
        CR=CI/RI(1,n);
        if CR>=0.1
            msgbox('判断矩阵没有通过一致性检验！');
        else
            msgbox('判断矩阵通过一致性检验！');
            Q=quan;
        end
    end
else
    %msgbox('判断矩阵应是方阵！')
end

