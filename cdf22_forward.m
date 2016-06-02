% Oren Fromberg (orenf@umd.edu)
% 5/7/08
function s=cdf22_forward(s, level)
s = cdf22_update(cdf22_predict(s,level),level);