function [h_g] = mysigmoid_grad(z)
h_g = mysigmoid(z).*(1-mysigmoid(z));
end