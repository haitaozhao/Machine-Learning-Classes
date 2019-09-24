function [post_p,test_lab] = my_testnb(xt,pw,my_mean,my_std,numClass,numVar)

[~,len] = size(xt);
for k = 1 : len
    temp = xt(:,k);
    for i = 1: numClass
        prod = 1;
        for j = 1:numVar
            prod = prod*pdf('normal',temp(j),my_mean(j,i),my_std(j,i));
        end
        post_p(k,i) = prod*pw(i);
    end
    [~,inx] = max(post_p(k,:));
    test_lab(k) = inx;
end