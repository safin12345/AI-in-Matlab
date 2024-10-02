% Description: calculate average brightness from an image by converting it
% to grayscale (black and white), summing up the brightness values at every
% pixel, and dividing by the total number of pixels
%
% Inputs: im: an image
% 
% Outputs: b: a double precisions measure of average brightness per pixel

function b = get_brightness(im)

    b = 0;

    % Converting the image to graycsale so that we have 1 less dimension to|
    % work with. RGB colour is not required as we can tell the difference  |
    % between images regardless of their colours.                          |
   
    im = my_im2gray(im);
    % We are then going to sum the brightness values of each image to see
    % which images have similar brightnesses.
    im_size = size(im,1)*size(im,2)*size(im,3);
    b = double(sum(im(:))/total);
end
