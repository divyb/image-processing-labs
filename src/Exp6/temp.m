pkg load image

img1 = imread('fingerprint.jpg');
subplot(2, 3, 1);  
imshow(img1);

se = strel("line", 7, 7); 

dilate = imdilate(img1, se); 
subplot(2, 3, 2);  
imshow(dilate); 

erode = imerode(img1, se); 
subplot(2, 3, 3); 
imshow(erode); 
  
open = imopen(img1, se); 
subplot(2, 3, 4);
imshow(open); 
   
close = imclose(img1, se); 
subplot(2, 3, 5);
imshow(close); 

close = imclose(img1, se); 
subplot(2, 3, 6);  
imshow(close); 

open = imopen(img1, se); 
subplot(2, 3, 7);  
imshow(open); 