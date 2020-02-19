img = imread('pout.tif');
[r,c] = size(img);
H = imhist(img);
Hc = cumsum(H);
T = round((255/(r*c))*Hc);
img_heq = uint8(T(img));