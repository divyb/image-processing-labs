clc
img1 = imread('r.png');

r1 = input('Enter r1 value: ');
s1 = input('Enter s1 value: ');
r2 = input('Enter r2 value: ');
s2 = input('Enter s2 value: ');

alpha = s1/r1;
beta = (s2-s1)/(r2-r1);
gamma = (255 - s2)/(255 -r2);


[row col] = size(img1);

for i =1:row
  for j =1:col
    
    if (img1(i,j) <=r1)
      op(i,j) = alpha*img1(i,j);
    elseif img1(i,j)>r1 && img1(i,j)<=r2
    op(i,j)=beta*(img1(i,j) -r1)+s1;
    else
    op(i,j)=gamma*(img1(i,j)-r2)+s2;
    endif
  endfor
endfor 
subplot(2,2,1);imshow(img1);title('Original Image');
subplot(2,2,2);imshow(op);title('Enhanced Image by Contrast stretching');