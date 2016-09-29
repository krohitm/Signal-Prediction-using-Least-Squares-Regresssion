function [y,W]=trainingOutput(training,M)
%
[X,R]=corrmtx(training,M,'autocorrelation');
P=X(1:M,:).'*training(1:M);
W=pinv(R)*P;
for t=1:3000
    y(t)=0;
    for k=1:M
        j=t-k;
        if j>0
            y(t)=y(t)+(W(k)*training(t-k));
        end;
    end;
    y=y.';
end;
