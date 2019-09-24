function [delta2_W2,delta2_b2,delta1_W1,delta1_b1] = my_grad_linear_output(x,y,t,Z1,Z2,W2,d0,d1,d2)

for i = 1 : d2
    delta2(i) = - (t(i)-y(i));
    for j = 1 : d1
        delta2_W2(i,j) = delta2(i)*mysigmoid(Z1(j));
    end
    delta2_b2(i) = delta2(i);
end

for i = 1 : d1
    sum = 0;
    for k = 1 : d2
       sum = sum + delta2(k)*W2(k,i)*mysigmoid_grad(Z1(i));
    end
    delta1(i) = sum;
    for j = 1 : d0
        delta1_W1(i,j) = delta1(i)*x(j);
    end
    delta1_b1(i) = delta1(i);
end


