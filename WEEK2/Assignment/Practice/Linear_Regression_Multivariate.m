data=load('ex1data2.txt');
X=data(:,1:2);
y=data(:,3);
m=length(y);
%Feature Scaling
[X_norm, mu, sigma] = featureNormalize(X);
mu
sigma
%Cost Function
X=[ones(m,1),X_norm];
theta=zeros(3,1);
J = computeCostMulti(X, y, theta);
J
%Gradient Descent
alpha=.1;
num_iters=100;
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
theta
%Convergence of the Cost Function
figure;
plot(1:numel(J_history),J_history','-b','LineWidth', 2);
xlabel('Number of Iterations');
ylabel('Cost J');
title('Convergence of Cost Function');
%Predicting Housing Price
dmat=[1650 3];
dmat=(dmat-mu)./sigma;
dmat=[1,dmat];
price=dmat*theta;
price=price(1)



