% Description: use an existing k-NN model to classify some testing examples 
%
% Inputs:
% m: a struct containing details of the k-NN model we want to use
% for classification 
% test_examples: a numeric array containing the testing examples we want to
% classify
% 
% Outputs:
% predictions: a categorical array containing the predicted
% labels (i.e., with the same ordering as test_examples)

function predictions = knn_predict(m, test_examples)

    predictions = categorical;

    distance = [];
    temp = categorical;

    % Calculating the euclidean distance between each row in the test data
    % and the training data
    for i = 1:size(test_examples,1)
        for j = 1:size(m.data,1)
            distance(end+1,:) = knn_calculate_distance(test_examples(i,:),m.data(j,:));
        end

        % Finding the k(3) nearest neighbours between the data and then
        % storing the most common one as our prediction.
        [val, idx] = mink(distance,m.k);
        temp = m.labels(idx);
        predictions(end+1,:) = mode(temp);
      
        distance = [];
    end
end
