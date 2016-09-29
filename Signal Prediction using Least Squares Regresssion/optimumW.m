function[WOpt,k]=optimumW(J,W)
%this function returns the optimum set W of paramters, in terms of minimum MSE
%it also returns the index of the corresponding Filter Order from Mfinal
WOpt=W(:,1);
k=1;
for i=2:size(J,2)
    if J(i)<J(k)
        WOpt=W(:,i);
        k=i;
    end;
end;
end