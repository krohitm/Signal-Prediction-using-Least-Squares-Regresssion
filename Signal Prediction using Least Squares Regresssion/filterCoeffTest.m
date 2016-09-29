function[Wtest]=filterCoeffTest(input)
%this function serves the first step.
%it finds various filter coefficient sets, for various combinations of
%Filter Order "M" and regularization parameter "lambda", using the training data 
M=[4 8 30];
k=1;
for i=1:3
        %we call the function parametersOutput to get a set W for each
        %combination of Filter order M and hyper-parameter lambda
        [X,R]=corrmtx(input,M(i),'autocorrelation');    %getting the autocorrelation matrix R for a filter order M
        P=X(1:M(i),:).'*input(1:M(i));                     %getting the cross-correlation matrix P
        W=pinv(R)*P; 
        Wtest(1:size(W),k)=W;
        %Mtest(k)=M(i);
        k=k+1;
    end;
end