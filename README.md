# Handwritten-Digit-Recognition

This repository includes python implemented feed-forward, back-propogation neural network to recognise handwritten digits ranging from 0 to 9.

Various approaches were selected for selecting hyper parameters λ and m .
Based on various test runs, the optimum value of λ was found to be 0.4 and optimum value of m was found to be 88. For these hyperparameters, the accuracy of 93.88 %  was achieved.

We started analysis by running script (run.sh) for all values of λ between 0 and 10 and m between 2 and 100. Following were
the observations:
1. Accuracy drastically reduced as the number of hidden nodes fell below the number of output nodes.

2. For λ , maximum accuracy was observed in the range of range of 0.3‐0.5 for different values on m

3. For m, maximum accuracy was observed at m=88 in the above range of λ

On further analysis and scraping through various articles on internet, to understand the above observation, we found that :
1. Number of hidden nodes should be between the size of input layer and the size of output layer.

2. According to [1] optimum value of hidden nodes is √x * o where x is number of features in input layer and o 
is number of nodes at output layer.

3. A model with extremely high regularisation, i.e high lambda, would not appropriately fit the training data. The
2‐D surface making the classifications will be too smooth, and there are bound to be incorrect predictions. However if the lambda is too small, it would overfit the training data. It would adapt to the irregularities in the training set, causing the surface to have arbitrary ripples which would give bad predictions for the test data.
For our neural network, we had 785 input nodes (including bias) and 10 output nodes. So according to [1] optimum value of hidden nodes should be √785 * 10 = 88.6 ≈ 88 , which is coherent with our observation.


References:
[1] http://stats.stackexchange.com/questions/181/how‐to‐choose‐the‐number‐of‐hidden‐layers‐and‐nodes‐in‐a‐feedfor ward‐neural‐netw
