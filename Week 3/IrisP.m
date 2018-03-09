clear ; close all; clc


 data=load('iris.txt');

 X=data(:,1:4);
 y=data(:,5);
 
 fprintf("loading the dataset\n");
 fprintf("plotting the data...\n");
 plotData(X,y);
 fprintf('Program paused. Press enter to continue.\n');
 pause;
 
 lambda=.3;
 X=[data(:,1:4)];
 
 theta=zeros(4,1);
 [J grad]=IrisCost(X,y,theta,lambda);
 
 fprintf("cost%f\n",J);
 fprintf("grad %f\n",grad);
 fprintf('Program paused. Press enter to continue.\n');
 pause;
 label=3;
 fprintf('Optimizing theta....\n');
 [all_theta]=onevsall(X,label,y);
 opt_theta=all_theta;
 fprintf('Done!\n');
 fprintf('Program paused. Press enter to continue.\n');
 pause;
 
 fprintf('Predicting on optimized theta....\n');
 p=predictall(X,opt_theta);

 
 fprintf('Done!\n');
 fprintf('Program paused. Press enter to continue.\n');
 pause;
 
 
 k=mean(double(p == y));
 fprintf('Program accuracy on training dataset %f\n',(k*100));
 
 
 data=load('test.txt');
 X_test=data(:,1:4);
 Y_test=data(:,5);
 test_result=predictall(X_test,opt_theta)
 fprintf('Done!\n');
 fprintf('Program paused. Press enter to continue.\n');
 pause;
 
 k=mean(double(test_result == Y_test));
 fprintf('Program accuracy on test dataset %f\n',(k*100));