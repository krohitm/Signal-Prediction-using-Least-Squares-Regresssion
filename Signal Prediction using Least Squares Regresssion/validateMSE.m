function [ J ] = validateMSE( validate,W )
%This is the third step.
%this function finds the Mean Squared Error for the various weight sets
%the purpose here is to find the best fitting set of parameters
for i=1:25
    M=10;
    for t=1:1000
        y(t)=0;
        for k=1:M
            j=t-k;
            if j>0
                y(t)=y(t)+(W(k,i)*validate(t-k+1));
            end;
        end;
        y=y.';
    end;
    J(i)=immse(validate,y);
    if mod(i,5)==0
        M=M+5;
    end;
end;
end

