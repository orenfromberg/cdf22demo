% Oren Fromberg (orenf@umd.edu)
% 5/7/08
function s=cdf22_inverse(s, level)
s = cdf22_undo_predict(cdf22_undo_update(s,level),level);