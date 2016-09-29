function [ W ] = parametersOutput( training,M,lambda )
%This function is kind of second step.
%this function is called by func filterCoeff to get a set of parameter W for a combination
%of Filter Order "M" and regularization parameter "lambda" using the formula W=pinv(R+lambda)*P
[X,R]=corrmtx(training,M,'autocorrelation');    %getting the autocorrelation matrix R for a filter order M
P=X(1:M,:).'*training(1:M);                     %getting the cross-correlation matrix P
W=pinv(R+lambda*eye(M+1))*P;                    %getting the set W
end