% Description: calculate the Euclidean distance between any two
% points
%
% Inputs:
% p: an array containing the coordinates of the first point
% q: an array containing the coordinates of the second point
% 
% Outputs:
% d: a numeric value holding the straight-line distance
% between the two points

function d = knn_calculate_distance(p, q)

    % Guidance:
    % 1. subtract the each of the feature values in p from the
    % corresponding feature values in q
    % 2. square each of the resulting differences
    % 3. compute the total of those squared differences
    % 4. compute the square root of that total value
    
    % add your code and comments on the lines below:

    d = sqrt(sum((p-q).^2));
end
