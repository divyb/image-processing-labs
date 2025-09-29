bw = imread('D:\College\Sem 5\IMAGE PROCESSING\sample images\b & w.jpg');
figure();imshow(bw);title('bw image');
gray= imread('D:\College\Sem 5\IMAGE PROCESSING\sample images\grayscale.jpg');
figure();imshow(gray);title('grayscale');
rgb= imread('D:\College\Sem 5\IMAGE PROCESSING\sample images\rgb.jpg');

bwresize = imresize(bw,[200 100]);
imwrite(bwresize,"bwresize.jpg");
size(bwresize)