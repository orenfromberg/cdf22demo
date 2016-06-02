% Oren Fromberg (orenf@umd.edu)
% 5/7/08
im = imread('lenna.pgm');
imagesc(im);
colormap gray;
dim = double(im);
axis equal;
axis off;
title('CDF(2,2) Wavelet Transform Demo');
pause;
for n = 1:8
    dim = cdf22_forward_2d(dim,n);
    imagesc(dim);
    axis equal;
    axis off;
    title(sprintf('analysis, level %d',n));
    pause;
end
for n=8:-1:1
    dim = cdf22_inverse_2d(dim,n);
    imagesc(dim);
    axis equal;
    axis off;
    title(sprintf('synthesis, level %d',n));
    pause;
end
title('perfect reconstruction!');