%%初始化决策矩阵无量纲化
function result=ndim(A,w)
[m,n]=size(A);
q=size(w,2);
if n~=q
    fprintf('请重新输入标志矩阵！');
else
    for j=1:n
        cmin(j)=min(A(:,j));
        cmax(j)=max(A(:,j));
        if w(j)==1  %效益型指标，值越大越好
            for i=1:m
                r(i,j)=(A(i,j)-cmin(j))/(cmax(j)-cmin(j));
            end
        else        %成本型指标，值越小越好
            for i=1:m
                r(i,j)=(cmax(j)-A(i,j))/(cmax(j)-cmin(j));
            end
        end
    end
    result=r;
end
end
                
            