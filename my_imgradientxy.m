% Description: reproduce the imgradientxy() function behaviour (using
% 'Prewitt') for yourself.
%
% Inputs: im: an image
% 
% Outputs: Gx an array of horizontal local gradient estimates in double
% precision Gy an array of vertical local gradient estimates in double
% precision

function [Gx, Gy] = my_imgradientxy(im)

    Gx = [];
    Gy = [];
        
    % The Prewitt filters that will be used on the image
    fx = [ -1  0  1;
       -1  0  1;
       -1  0  1];

    fy = [ -1 -1 -1;
        0  0  0;
        1  1  1];

    % Padding the array by replicating its edge values
    im = padarray(im,[1,1],'replicate');
    s = size(im);
    Gx = zeros(s);
    Gy = zeros(s);
    
    % Convoluting the image and the filter. Starting from index 2 so it is not
    % performing convolution too close to the edges.
    for i = 2:s(1)-1
        for j = 2:s(2)-1
            tempx = im(i-1:i+1,j-1:j+1) .* fx;
            tempy = im(i-1:i+1,j-1:j+1) .* fy;
            Gx(i,j) = sum(tempx(:));
            Gy(i,j) = sum(tempy(:));
        end
    end
    
    % Removing the padding from the arrays
    Gx = Gx(2:end-1,2:end-1)
    Gy = Gy(2:end-1,2:end-1)

%     Gx = imfilter(im, fx, 'replicate');
%     Gy = imfilter(im, fy, 'replicate');

end
