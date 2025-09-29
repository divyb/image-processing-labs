#d.	Gray Level Slicing ( Intensity Level Slicing) 
clear;
img1 = imread('r.png');

a = input('Enter a value: ');
b = input('Enter b value: ');

[row col] = size(img1);

for i = 1:row
  for j = 1:col
    if (img1(i,j)>=a && img1(i,j)<=b)
      opb(i,j) = 255;
      opwb(i,j) = 255;
      
    else
      opb(i,j)=0;
      opwb(i,j) = img1(i,j);
    endif

  endfor
endfor
subplot(2,2,1);imshow(img1);title('Original Image');
subplot(2,2,2);imshow(opb);title('slicing without background');
subplot(2,2,3);imshow(opwb);title('slicing with background');