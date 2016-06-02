% Oren Fromberg (orenf@umd.edu)
% 5/7/08
function s=cdf22_inverse_2d(s, level)
[rows cols] = size(s);
for i = 1:rows
    s(i,:) = cdf22_inverse(s(i,:)',level)';
end
for i = 1:cols
    s(:,i) = cdf22_inverse(s(:,i),level);
end
