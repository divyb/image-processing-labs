img1 = imread('xray.jpg');
imgbin = im2bw(img1,0.5);

B1 = [0 0 0; 0 1 1; 0 1 0];
B2 = [1 1 1; 1 0 0; 1 0 0];

imgout = bwhitmiss(imgbin,B1,B2);

subplot(2,1,1);imshow(imgbin);title('orignal image');
subplot(2,1,2);imshow(imgout);title('hits');
