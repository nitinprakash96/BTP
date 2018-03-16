function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

pos = find(y==1);
neg = find(y==2 | y==3 );

plot(X(pos, 1), X(pos, 2) ,'k+', 'LineWidth', 2, 'MarkerSize', 7);

plot(X(neg, 1), X(neg, 2) , 'ko',  'MarkerFaceColor', 'y', 'MarkerSize', 7);

plot( X(pos, 3),  X(pos, 4),'k+', 'LineWidth', 2, 'MarkerSize', 7);

plot( X(neg, 3),  X(neg, 4), 'ko',  'MarkerFaceColor', 'y', 'MarkerSize', 7);
title('One vs all - type 1');
hold off;

figure; hold on;
pos = find(y==2);
neg = find(y==3 | y==1);
plot(X(pos, 1), X(pos, 2) ,'k+', 'LineWidth', 2, 'MarkerSize', 7);

plot(X(neg, 1), X(neg, 2) , 'ko',  'MarkerFaceColor', 'y', 'MarkerSize', 7);
plot( X(pos, 3),  X(pos, 4),'k+', 'LineWidth', 2, 'MarkerSize', 7);

plot( X(neg, 3),  X(neg, 4), 'ko',  'MarkerFaceColor', 'y', 'MarkerSize', 7);
title('One vs all - type 2');
hold off;


figure; hold on;
pos = find(y==3);
neg = find(y==2 | y==1);
plot(X(pos, 1), X(pos, 2) ,'k+', 'LineWidth', 2, 'MarkerSize', 7);

plot(X(neg, 1), X(neg, 2) , 'ko',  'MarkerFaceColor', 'y', 'MarkerSize', 7);
plot( X(pos, 3),  X(pos, 4),'k+', 'LineWidth', 2, 'MarkerSize', 7);

plot( X(neg, 3),  X(neg, 4), 'ko',  'MarkerFaceColor', 'y', 'MarkerSize', 7);
title('One vs all - type 3');
% =========================================================================



hold off;

end