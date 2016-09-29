function [y,J,MSE]=plotTestError(input,W,order)
n=size(input,1);
for t=1:n
    y(t)=0;
    for k=1:order
        j=t-k;
        if j>0
            y(t)=y(t)+(W(k)*input(t-k+1));     %getting the output on the basis of the W
        end;
    end;
    J(t)=y(t)-input(t);
end;
y=y.';
MSE=immse(y,input);
end