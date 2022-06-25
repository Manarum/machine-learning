function pdboundary(theta,X,y)
  pd(X(:,[2,3]),y);
  hold on;
  if size(X,2)<=3
    plot_x=[min(X(:,2))-2 max(X(:,2))+2];
    plot_y=-(1./theta(3))*(theta(1)+plot_x*theta(2));
    plot(plot_x,plot_y,'r-');
    axis([30 100 30 100]);
    hold off;
end
