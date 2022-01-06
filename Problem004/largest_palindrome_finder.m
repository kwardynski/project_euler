% Assign the max/min 3 digit values possible
minVal = 100;
maxVal = 999;


% Generate a 900x900 matrix of numbers who have 2 3 digit factors
% This is by no means elegant or ideal, but it takes almost no time
% and is only 6480kb in size
test_array = [minVal:maxVal].*[minVal:maxVal]';


% Find the UNIQUE values in that matrix and sort in descending order
test_vals = sort(unique(test_array), "descend");


% Loop through the list (again not elegant or ideal) until the first palindrome
% number is encountered. Do this by checking if the string representation of
% the number is equal to the flipped string representation - i.e. the literal 
% definition of a palindrome.
largest_palindrome = "";
for i = 1:numel(test_vals)
  if strcmp(num2str(test_vals(i)), flip(num2str(test_vals(i))))
     largest_palindrome = num2str(test_vals(i));
    break
  end
end


% Display the results
fprintf("Largest palindrome number found is: %s\n", largest_palindrome)
