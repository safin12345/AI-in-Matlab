% Description: generate estimates of the fraction of vertical and
% horizontal edge pixels in an image by calling imgradientxy to compute
% local gradients in each direction and thresholding the magnitudes in the
% two resulting matrices
%
% Inputs: im: an image
% 
% Outputs: edges: array containing the fraction of all gradient magnitudes
% above the threshold in the horizontal direction (inside edges(1)) and the
% fraction of all gradient magnitudes above the threshold in the vertical
% direction (inside edges(2))
%


function edges = get_edges(im)

    edges = [0 0];
    
    im = my_im2gray(im);

    % Find horizontal and vertical gradients by performing convolutions on
    % the image
    [fx,fy] = my_imgradientxy(im);

    % Find the absolute values of the gradients as we do not need to know
    % where the image is going from light to dark and vice versa. We are
    % only interested in the steepness.
    fx = abs(fx);
    fy = abs(fy);

    % Convert array to binary array, setting threshold for 1 if pixels >45
    % and 0 for pixels < 45. This is to calculate the fraction
    % of the image that we believe to be edges.
    my_threshold = 45;

    fx(fx<=my_threshold) = 0;
    fx(fx>=my_threshold) = 1;
    fy(fy<=my_threshold) = 0;
    fy(fy>=my_threshold) = 1;

    x_edges = sum(fx(:));
    total_x = numel(fx);
   
    y_edges = sum(fy(:));
    total_y = numel(fy);
   
    
    edges = [x_edges,y_edges];
    fraction_x = x_edges/total_x
    fraction_y = y_edges/total_y
end
