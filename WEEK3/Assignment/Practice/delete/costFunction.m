function [J,grad]=costFunction(theta,X,y,lambda)
  J=0;
  grad=zeros(size(theta));
  m=length(y);
  h=sigmoid(X*theta);
  theta_temp=[0;theta(2:end,:)];
  J=(1/m)*(-y'*log(h)-(1-y)'*log(1-h))+(lambda/(2*m))*(theta_temp'*theta_temp);
  grad=(1/m)*(X'*(h-y))+(lambda/m)*theta_temp;





end
