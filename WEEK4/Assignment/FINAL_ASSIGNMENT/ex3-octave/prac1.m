input_layer_size=400;
num_value=10;
load('ex3data1.mat');
[m,n]=size(X);
m=size(X,1);
rand_indices=randperm(m);
sel=X(rand_indices(1:100),:);
displayData(X);