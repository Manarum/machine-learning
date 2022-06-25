function [X_norm,mu,sigma]=fn(X)

  %mu=zeros(1,size(X,2));
  %sigma=zeros(1,size(X,2));

  mu=mean(X);
  sigma=std(X);
  X_norm=(X-mu)./sigma;
  end
