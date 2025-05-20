% Given matrices Y and Z
X=aurowb_1;
[X_x,X_y]=size(X);


if sum(X)==0
    A=zeros(X_x,X_y);
    X_sum=sum(X); 
    else
        A=zeros(X_x,X_y)
        [x y z]=find(X);
    
    for i=1:1:length(z)
        A(x(i),y(i))=z(i);
    end
end 

A
X
A~=X