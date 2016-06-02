% Oren Fromberg (orenf@umd.edu)
% 5/7/08
function s=cdf22_undo_update(s, level)
step = 2^level;
evens = s(2:step:end);
odds = s(1:step:end-1);
minus1 = [odds(2); odds(1:end-1)];
plus1 = [odds(2:end); odds(end-1)];
s(2:step:end) = s(2:step:end) - 0.25 * (minus1 + plus1);