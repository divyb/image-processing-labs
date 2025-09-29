img1 = imread('r.png');

t = input('Enter Threshold value: ');
[row col] = size(img1);

for i=1:row
  for j=1:col
    if(img1(i,j)<=t)
      img2(i,j)=0;
     else
      img2(i,j)=255;
    endif
  endfor
  endfor

subplot(2,2,1);imshow(img1);title('Original Image');
subplot(2,2,2);imshow(img2);title('Enhancement by Thresholding of image');