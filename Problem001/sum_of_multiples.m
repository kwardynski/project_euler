
% Generate vector [1:1000)
base_vector = 1:999;

% Find indices of values which are divisible by either 3 or 5
div_locs = mod(base_vector, 3) == 0 | mod(base_vector, 5) == 0;

% Compute the sum of those values
sum(base_vector(div_locs))
