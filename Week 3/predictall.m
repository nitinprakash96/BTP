function p=predictall(X,opt_theta);


p=sigmoid(X*opt_theta');

[pr index]=max(p,[],2);

 p=index;
 end