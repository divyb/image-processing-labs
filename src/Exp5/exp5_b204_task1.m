#Robert Edge Detection
clear all
clc

img1 = rgb2gray(imread('build.jpg'));
img2 = double(img1);

[row col] = size(img2);

w1  = [1 0;0 -1];
w2 = [0 1; -1 0];

for x=2:row-1
  for y =2:col-1
    gx(x,y) = w1(1)*img2(x,y) + w1(2)*img2(x,y+1) + w1(3)*img2(x+1,y) + w1(4)*img2(x+1,y+1);
    gy(x,y) = w2(1)*img2(x,y) + w2(2)*img2(x,y+1) + w2(3)*img2(x+1,y) + w2(4)*img2(x+1,y+1);

  endfor
endfor

g= gx+gy;

subplot(2,2,1);imshow(uint8(img1))
subplot(2,2,2);imshow(uint8(gx))
subplot(2,2,3);imshow(uint8(gy))
subplot(2,2,4);imshow(uint8(g));title('Robert Edge Detection');