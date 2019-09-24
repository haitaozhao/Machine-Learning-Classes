function [pw,my_m,my_std] = my_nb(x,gnd)
[row,~] = size(x);
my_lab = unique(gnd);
numClass = length(my_lab);
for i = 1 : numClass
    pw(i)= sum(gnd==my_lab(i));
    pw(i) = pw(i)/length(gnd);
end
for i = 1 : row
    for j = 1:numClass
        temp = x(i,gnd==my_lab(j));
        my_m(i,j) = mean(temp);
        my_std(i,j)= std(temp);
    end    
end
