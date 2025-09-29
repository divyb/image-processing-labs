#Prewitt Edge Detection

clear all
clc

img1 = rgb2gray(imread('build.jpg'));
img2 = double(img1);

[row col] = size(img2);

w1  = [-1 -1 -1;0 0 0;1 1 1];
w2 = [-1 0 1; -1 0 1; -1 0 1];

for i=2:row-1
  for j =2:col-1
    gx(i,j)  = w1(1)*img2(i-1,j-1)+w1(2)*img2(i-1,j)+w1(3)*img2(i-1,j+1)+w1(4)*img2(i,j-1)+w1(5)*img2(i,j)+w1(6)*img2(i,j+1)+w1(7)*img2(i+1,j-1)+w1(8)*img2(i+1,j)+w1(9)*img2(i+1,j+1);
    gy(i,j)=w2(1)*img2(i-1,j-1)+w2(2)*img2(i-1,j)+w2(3)*img2(i-1,j+1)+w2(4)*img2(i,j-1)+w2(5)*img2(i,j)+w2(6)*img2(i,j+1)+w2(7)*img2(i+1,j-1)+w2(8)*img2(i+1,j)+w2(9)*img2(i+1,j+1);

  endfor
endfor

g= gx+gy;

subplot(2,2,1);imshow(uint8(img1))
subplot(2,2,2);imshow(uint8(gx))
subplot(2,2,3);imshow(uint8(gy))
subplot(2,2,4);imshow(uint8(g));title('Prewitt Edge Detection');