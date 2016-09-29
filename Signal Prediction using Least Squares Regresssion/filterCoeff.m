function[W,Mfinal,lambdaFinal]=filterCoeff(training)
%this function serves the first step.
%it finds various weight sets, for various combinations of
%Filter Order "M" and regularization parameter "lambda", using the training data 
M=[10 15 20 25 30];                     %we try to find th weight sets using these filter orders
lambda=[0.001 0.003 0.01 0.03 0.1];     %we try to find the weight sets using these regularization parameters
k=1;
for i=1:5
    for j=1:5
        Wtemp=parametersOutput(training,M(i),lambda(j));    %Gets a set W for each combination of Filter order M and regularization-parameter lambda
        W(1:size(Wtemp),k)=Wtemp;
        Mfinal(k)=M(i);
        lambdaFinal(k)=lambda(j);
        k=k+1;
    end;
end;
end