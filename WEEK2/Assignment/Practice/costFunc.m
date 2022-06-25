function J=costFunctionJ(X,y,theta)
m=size(X,1);
pred=X*theta;
sqrErrors=(pred-y).^2;
J=sum(sqrErrors)/(2*m)