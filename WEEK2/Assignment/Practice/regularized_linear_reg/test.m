data=load('test.txt');
X=data(:,1);
y=data(:,2);
plotData(X,y)

m=length(y);
%X=[X,X.^2,X.^3,X.^4,X.^5,X.^6,X.^7,X.^8];
%X=[X,sqrt(X)]
X=[X,X.^2,X.^3]
[X_norm, mu, sigma] = featureNormalize(X);
X=[ones(m,1),X_norm];
theta=zeros(4,1);
J=computeCost(X,y,theta)
fprintf('This J is for theta[0;0]\n')

alpha=0.01;
iterations=1500;
[theta,J_history]=gradientDescent(X,y,theta,alpha,iterations);
theta
hold on;
plot(data(:,1),(X*theta),'-')
