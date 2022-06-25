data=load('ex2data1.txt');
X=data(:,[1,2]);
y=data(:,3);
plotData(X,y)
xlabel('Exam 1 Score');
ylabel('Exam 2 Score');
legend('Admitted','Not Admitted');

[m,n]=size(X);
X=[ones(m,1),X];
initial_theta=zeros(n+1,1);
[cost, grad] = costFunction(initial_theta, X, y);
cost
grad

options=optimset('GradObj','on','MaxIter',400);
[theta,cost]=fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
theta
cost

plotDecisionBoundary(theta, X, y);
hold on;
xlabel('Exam 1 score');
ylabel('Exam 2 score');
legend('Admitted', 'Not admitted','Decision Boundary');
hold off;

%  Predict probability for a student with score 45 on exam 1
%  and score 85 on exam 2
prob = sigmoid([1 45 85] * theta)

% Compute accuracy on our training set
p = predict(theta, X);
fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);

