img1=imread('sample.jpg');
subplot(3,3,1);imshow(img1);title('original image');
pkg load image
se=strel("line",25,25);
#opened image
open=imopen(img1,se);
subplot(3,3,2);imshow(open);title('opened image');
#closed image
close=imclose(img1,se);
subplot(3,3,3);imshow(close);title('closed image');
#opening followed by closing
open2=imopen(img1,se);
close2=imclose(open2,se);
subplot(3,3,4);imshow(close2);title('opening followed by closing');
#closing followed by opening
close3=imclose(img1,se);
open3=imopen(close3,se);
subplot(3,3,5);imshow(open3);title('closing followed by opening');
#dilation
dilate=imdilate(img1,se);
subplot(3,3,6);imshow(dilate);title('dilated image');
#erosion
erode=imerode(img1,se);
subplot(3,3,7);imshow(erode);title('eroded image');