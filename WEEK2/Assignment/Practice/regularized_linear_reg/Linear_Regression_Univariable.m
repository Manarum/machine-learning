data=load('ex1data1.txt');
X=data(:,1);
y=data(:,2);
plotData(X,y)

m=length(y);
X=[X,X.^2];
[X_norm, mu, sigma] = featureNormalize(X);
X=[ones(m,1),X_norm];
theta=zeros(3,1);
J=computeCost(X,y,theta)
fprintf('This J is for theta[0;0]\n')

alpha=0.01;
iterations=1500;
[theta,J_history]=gradientDescent(X,y,theta,alpha,iterations);
theta
J_history;
hold on;
plot(data(:,1),(X*theta),'o')
legend('Training Data','Linear Regression');
pred1=[1,3.5,12.25]*theta
pred2=[1,7,49]*theta

iter=[1:1500]';
J_theta=(J_history)';
hold off;
figure;
plot(iter,J_theta,'-');
xlabel('No of Iterations');
ylabel('Cost Function');

theta0_vals=linspace(-10,10,100);
theta1_vals=linspace(-1,4,100);
J_vals=zeros(length(theta0_vals),length(theta1_vals));
for i=1:length(theta0_vals)
  for j=1:length(theta1_vals)
    t=[theta0_vals(i);theta1_vals(j)];
    J_vals(i,j)=computeCost(X,y,t);
  end
end

J_vals=(J_vals)';
figure;
subplot(1,2,1);
surf(theta0_vals,theta1_vals,J_vals);
xlabel('\theta_0');
ylabel('\theta_1');

subplot(1,2,2);
contour(theta0_vals,theta1_vals,J_vals,logspace(-2,3,20));
xlabel('\theta_0');
ylabel('\theta_1');

hold on;
plot(theta(1),theta(2),'rx','MarkerSize',10,'LineWidth',2);
