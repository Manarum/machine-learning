function J=ccm(X,y,theta)

  m=length(y);
  h_theta=X*theta;
  J=sum(h_theta-y).^2/(2*m);

  end
