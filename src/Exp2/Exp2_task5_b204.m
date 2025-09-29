img1 = imread('r.png');

subplot(4,3,1);imshow(img1);title('Original image');
subplot(4,3,2);imshow(bitget(img1,1));title('bitvalue 1');
subplot(4,3,3);imshow(bitget(img1,2));title('bitvalue 2');
subplot(4,3,4);imshow(bitget(img1,3));title('bitvalue 3');
subplot(4,3,5);imshow(bitget(img1,4));title('bitvalue 4');
subplot(4,3,6);imshow(bitget(img1,5));title('bitvalue 5');
subplot(4,3,7);imshow(bitget(img1,6));title('bitvalue 6');
subplot(4,3,8);imshow(bitget(img1,7));title('bitvalue 7');
subplot(4,3,9);imshow(bitget(img1,8));title('bitvalue 8'); 