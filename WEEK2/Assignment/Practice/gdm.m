function [theta,J_history]=gdm(X,y,theta,alpha,num_iter)

  m=length(y);
  j_history=zeros(num_iter,1)
  for i=1:num_iter
    theta=theta-(alpha/m)*(X'*((X*theta)-y));
    J_history(i)=ccm(X,y,theta);
  end

end

