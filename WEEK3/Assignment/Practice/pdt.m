function p=pdt(X,theta)
  m=size(X,1);
  p=zeros(m,1);
  p=sf(X*theta)>=.5;
