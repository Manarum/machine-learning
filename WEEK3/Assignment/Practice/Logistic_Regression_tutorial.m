options=optimset('GradObj','on','MaxIter',100)
initialTheta=zeros(2,1)
[optTheta,funcionVal,exitFlag]=fminunc(@costFunction,initialTheta,options)
