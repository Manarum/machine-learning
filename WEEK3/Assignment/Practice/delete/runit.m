data=load('ex2Data2.txt');
X=data(:,[1 2]);
y=data(:,3);
plotData(X,y)
xlabel('Test 1');
ylabel('Test 2');
legend('y=1','y=0');
X1=X(:,1);
X2=X(:,2);
X=mapFeature(X1,X2);
initial_theta=zeros(size(X,2),1);
lambda=1;
[cost,grad]=costFunction(initial_theta,X,y,lambda);

initial_theta=ones(size(X,2),1);
[cost,grad]=costFunction(initial_theta,X,y,10);

initial_theta=zeros(size(X,2),1);
lambda=1;
options=optimset('GradObj','on','MaxIter',400);
[theta,J,exitflag]=fminunc(@(t)(costFunction(t,X,y,lambda)),initial_theta,options);

plotDecisionBoundary(theta, X, y);


p=predict(X,y,theta);
accuracy=mean(double(p==y))*100



