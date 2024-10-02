% Description: uses horizontal and vertical local gradient estimates (from
% a call to imgradientxy() or your own my_imgradientxy() implementation) to
% compute maximum rate of increase information at each pixel
%
% Inputs: 
% Gx an array of horizontal local gradient estimates in double precision 
% Gy an array of vertical local gradient estimates in double precision
% 
% Outputs:
% Gmag an array of magnitudes for the maximum rate of increase in local
% gradient
% Gdir an array of directions for the maximum rate of increase in local
% gradient (in units of degrees)

function [Gmag, Gdir] = my_imgradient(Gx, Gy)

    Gmag = [];
    Gdir = [];

    % add your code and comments on the lines below:
    Gmag2 = Gx.^2+Gy.^2;
    Gmag = sqrt(Gmag2);

    Gdir = atan2(Gx,Gy);
    Gdir = rad2deg(Gdir);
end
