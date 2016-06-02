% Oren Fromberg (orenf@umd.edu)
% 5/7/08
function s = cdf22_undo_predict(s, level)
step = 2^level;
odds = s(1:step:end-1);
evens = s(2:step:end);
minus1 = [evens(2); evens(1:end-1)];
plus1 = [evens(2:end); evens(end-1)];
s(1:step:end-1) = s(1:step:end-1) + 0.5 * (minus1 + plus1);