function [theta]=ne(X,y,theta)

  theta=pinv(X'*X)*X'*y;

  end
