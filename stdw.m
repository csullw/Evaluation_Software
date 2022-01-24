function result=stdw(A)
[m,n]=size(A);
for j=1:n
    E(j)=sum(A(:,j))/m;
    std(j)=sqrt(sum((A(:,j)-E(j)).^2));
end
w=std./sum(std);
result=w;
end

