function [row, col] = sub2sub(szOrig, szSubdiv, r, c, p)

%{
szOrig     = size of the original matrix before subdividing
szSubdiv   = size of the subdivision
r          = row index in the subdivision
c          = column index in subdivision
p          = page index of the subdivision or linear index of the cell that contains the subdivisions
%}

nrGrid = szOrig(1)./szSubdiv(1); % number of rows in the resultant grid of subdivisions
% ncGrid = szOrig(2)/szSubdiv(2);

nrSubdiv = szSubdiv(1); % number of rows in each subdivision
ncSubdiv = szSubdiv(2); % number of columns in each subdivision

col = floor( ( p - 1) ./ nrGrid ) .* ncSubdiv + c; % respective column index of the original matrix
row = mod( p - 1 , nrGrid) .* nrSubdiv + r;        % respective row index of the original matrix

end