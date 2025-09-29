img1 = imread('r.png');

max1 = max(max(img1));
img2 = max1 - img1;
imshow(img2);
subplot(2,2,1);imshow(img1);title('Original Image');
subplot(2,2,2);imshow(img2);title('Negation of Image');