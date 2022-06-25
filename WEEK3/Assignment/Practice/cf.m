function [J,grad]=cf(theta,X,y)
  J=0;
  grad=zeros(size(theta));
  m=length(y);
  h=sf(X*theta);
  J=(1/m)*(-y'*log(h)-(1-y)'*(log(1-h)));
  grad=(1/m)*(X'*(h-y));
end
