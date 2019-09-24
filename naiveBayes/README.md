Naive Bayes Classifier

Naive Bayes Classifier views each variable of data independent, and uses Bayes rule to compute the  posterior probabilities for each sample. Multinomial distribution and Gaussian distribution are widely used in the modeling of each variable.

iris data set is used in this experiment. iris data set has 150 samples and 4 variables for each sample. There are 3 different classes in iris data set.

We model each variable as Gaussian distribution, which we need to compute mean and std for each variable of different classes. Then we can model the likelihood p(x|class) and the prior P(class) and finally model the posterior probabilities P(class|x) 


