% Description: create a model ready to perform k-NN classification
% from some training data (assuming k=1 initially)
%
% Inputs:
% train_examples: a numeric array containing the training examples
% train_labels: a categorical array containing the associated
% labels (i.e., with the same ordering as train_examples)
% 
% Outputs:
% m: a struct holding the parameters of the k-NN model (the
% training examples, the training labels, and a value for k - the number of
% nearest neighbours to use)

function m = knn_fit(train_examples, train_labels,k)

    % Guidance:
    % 1. store the supplied parameters as fields inside the model
    % struct:

    m = struct;
    
    % add your code and comments on the lines below:

    % Store and seperate the data into numerical, categorical
    % and k values in a struct
    m.data = train_examples;
    m.labels = train_labels;
    m.k = k;
end
