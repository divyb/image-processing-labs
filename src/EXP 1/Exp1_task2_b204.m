rgb= imread('D:\College\Sem 5\IMAGE PROCESSING\sample images\rgb.jpg');
bw = imread('D:\College\Sem 5\IMAGE PROCESSING\sample images\b & w.jpg');
mountain = imread('D:\College\Sem 5\IMAGE PROCESSING\sample images\mountain.jpg');
img1 = rgb + mountain;
img2 = mountain - rgb;

img3 = mountain/10;
img4 = mountain/50;
img5 = mountain/255;

img6 = mountain*10;
img7 = mountain*50;
img8 = mountain*255;

img9 = rgb .*mountain;
img10 = rgb ./mountain;

subplot(4,3,1);imshow(img1);title('addition of 2 image');
subplot(4,3,2);imshow(img2);title('subtraction of 2 image');
subplot(4,3,3);imshow(img3);title('divide by 10');
subplot(4,3,4);imshow(img4);title('divide by 50');
subplot(4,3,5);imshow(img5);title('divide by 255');
subplot(4,3,6);imshow(img6);title('multiply by 10');
subplot(4,3,7);imshow(img7);title('multiply by 50');
subplot(4,3,8);imshow(img8);title('multiply by 255');
subplot(4,3,9);imshow(img9);title('multiply two images');
subplot(4,3,10);imshow(img10);title('divide two images');