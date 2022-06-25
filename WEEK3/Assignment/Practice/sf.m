function g=sf(z)
  g=zeros(size(z));
  g=exp(-z);
  g=1+g;
  g=1./g;
end
