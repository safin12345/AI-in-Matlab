% Description: convert an image to grayscale and extract HOG
% features from patches of size 16*16 pixels
%
% Inputs:
% im: an image
% 
% Outputs:
% h: an array containing all the HOG features for the image

function h = get_hogs(im)

    h = [];


    [gx,gy] = my_imgradientxy(im);

    % Gets the magnitude and direction of the maximum rate of increase
    % vectors (MRIV). This is to give me the direction of the steepest
    % patches of the image and also how steep it is.
    [gmag, gdir] = my_imgradient(gx,gy);

    % Setting the patch size to 16x16 to see the average maximum rate of
    % increase between these patches. This is a good size as it will
    % capture good structure detail and also the machine wont struggle to learn fast.
    CELLSIZE = [16 16];
    
    % Stores the histogram bin scores from each patch of the image 
    [h,v] = extractHOGFeatures(im,'CellSize', CELLSIZE, ...
        'BlockSize', [floor(size(im,1)/CELLSIZE(1)) 
        floor(size(im,2)/CELLSIZE(2))], 'UseSignedOrientation',true);
end
