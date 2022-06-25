%Data Visualize
data=load('ex2data2.txt');
X=data(:,[1 2]);
y=data(:,3);
plotData(X,y);
hold on;
xlabel('Microchip Test 1');
ylabel('Microchip Test 2');
legend('y=1','y=0');
hold off;
%Features Mapping
X1=X(:,1);
X2=X(:,2);
X=mapFeature(X1,X2);
%Cost and Gradient calculation
initial_theta=zeros(size(X,2),1);
lambda=1;
[cost,grad]=costFunctionReg(initial_theta, X, y, lambda);
cost
grad(1:5)
test_theta = ones(size(X,2),1);
[cost, grad] = costFunctionReg(test_theta, X, y, 10);
cost
grad(1:5)

initial_theta=zeros(size(X,2),1);
lambda=.00001;  %Text with lambda=1,0,100

options=optimset('GradObj','on','MaxIter',400);
[theta, J, exit_flag] = fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);
%Decision Boundary
plotDecisionBoundary(theta, X, y);
hold on;
title(sprintf('lambda = %g', lambda));
xlabel('Microchip Test 1');
ylabel('Microchip Test 2');
legend('y = 1', 'y = 0', 'Decision boundary');
hold off;

%Predict
p = predict(theta, X);
%Train Accuracy
Train_Accuracy=mean(double(p == y))*100




