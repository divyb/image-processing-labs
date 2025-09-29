#Median filtering

clc
clear
img1 = rgb2gray(imread('xray.jpg'));
img2 = imnoise(img1,'salt & pepper',0.02);
img2 = double(img2);

[row col] = size(img2);

for i=2:row-2
  for j=2:col-2
    a1 = [img2(i-1,j-1),img2(i-1,j),img2(i-1,j+1),img2(i,j),img2(i,j-1),img2(i,j+1),img2(i+1,j-1),img2(i+1,j),img2(i+1,j+1)];
    a2 = sort(a1);
    med = a2(5);
    imgr(i,j) = med;
  endfor
endfor

subplot(2,1,1);imshow(uint8(img2));title('original image');
subplot(2,1,2);imshow(uint8(imgr));title('Median filtered image');