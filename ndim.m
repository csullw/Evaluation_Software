%%��ʼ�����߾��������ٻ�
function result=ndim(A,w)
[m,n]=size(A);
q=size(w,2);
if n~=q
    fprintf('�����������־����');
else
    for j=1:n
        cmin(j)=min(A(:,j));
        cmax(j)=max(A(:,j));
        if w(j)==1  %Ч����ָ�ֵ꣬Խ��Խ��
            for i=1:m
                r(i,j)=(A(i,j)-cmin(j))/(cmax(j)-cmin(j));
            end
        else        %�ɱ���ָ�ֵ꣬ԽСԽ��
            for i=1:m
                r(i,j)=(cmax(j)-A(i,j))/(cmax(j)-cmin(j));
            end
        end
    end
    result=r;
end
end
                
            