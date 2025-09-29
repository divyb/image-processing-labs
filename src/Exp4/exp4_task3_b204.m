#Highpass filtering

img1 = imread('xray.jpg');
img1 = rgb2gray(img1);
gimg = double(img1);
[row col] = size(gimg);
w = [-1 -1 -1;-1 8 -1;-1 -1 -1];

for i=2:row-1
  for j =2:col-1
    rimg(i,j)=w(1)*gimg(i-1,j-1)+w(2)*gimg(i-1,j)+w(3)*gimg(i-1,j+1)+w(4)*gimg(i,j-1)+w(5)*gimg(i,j)+w(6)*gimg(i,j+1)+w(7)*gimg(i+1,j-1)+w(8)*gimg(i+1,j)+w(9)*gimg(i+1,j+1);
  endfor
endfor


subplot(2,1,1);imshow(uint8(gimg)),title('Original image');
subplot(2,1,2);imshow(uint8(rimg)),title('Highpass filtered image');