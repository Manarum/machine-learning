function p=predict(X,y,theta)
  m=length(y);
  p=zeros(size(m));
  p=sigmoid(X*theta)>=.5;
end
