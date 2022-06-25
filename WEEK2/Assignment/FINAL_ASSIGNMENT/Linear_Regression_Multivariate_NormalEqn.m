%Normal Equation (No need of Feature Scaling)
data=load('ex1data2.txt');
X=data(:,1:2);
y=data(:,3);
m=length(y);
X=[ones(m,1),X];

[theta] = normalEqn(X, y);
theta

%Prediction of housing price
dmat=[1 1650 3];
price=dmat*theta;
price=price(1)



