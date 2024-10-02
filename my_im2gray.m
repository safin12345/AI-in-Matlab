% Description: reproduce the im2gray() function behaviour for
% yourself (including some simple Inputs/Outputs comments, below)
%
% Inputs:
% im: an image
% 
% Outputs: 
% im_g: a greyscale image consisting of uint8 values

function im_g = my_im2gray(im)

    im_g = [];
    % Acquiring the RGB values of the images. The third dimenson contains
    % these RGB values
    R = im(1:end,1:end,1);
    G = im(1:end,1:end,2);
    B = im(1:end,1:end,3);
    
    % Using a 'weighted sum' which attempts to make the image look
    % grayscale to the human eye. Recasting it to a double precision value
    % so we can maintain better accuracy - however it still will not be as
    % accurate as the im2gray function unfortunately.

    im_g = im2double(0.2989 * R + 0.5870 * G + 0.1140 * B);
end
