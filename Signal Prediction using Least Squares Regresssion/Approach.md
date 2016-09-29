The approach followed is as given below:

1. The function filterCoeff finds various weight sets, for various combinations of Filter Order "M" and regularization parameter "lambda", using the non-noisy training data training.mat.
    * This function calls the function parametersOutput to get the value of weights for each combination of the Filter Order and the regularization parameter.
    * The function parametersOutput finds the auto-correlation matrix R and cross-correlation matrix P for a particular filter order, and then gives the weights accordingly.
2. The function validateMSE takes the weights found in first function and implements linear regression on validation data validate.mat, thereby calculating the Mean Square Errors for the various weight sets.
3. The function createFit gives a 3D plot of the Mean Square Errors against the values of Filter Order M and the regularization parameter.
4. The function optimumW finds the best weights in terms of Minimum Mean Square Error from the observations in validateMSE.
5. The function filterCoeffTest uses filter orders 4, 8,  and 30 to find the weights from the training data, without using the regularization parameter. 
    * These weight sets would later be used to check if the validation was correct in the previous 3 functions.
6. The function plotTestError can then be used to predict the signal, the Mean Square Errors, and the prediction error across time for each filter order, using the weights found in optimumW and filterCoeffTest.
    * The predicted signals, or their prediction errors across time, can be plotted against the actual test signal to find whether the validation done earlier was correct or not.
