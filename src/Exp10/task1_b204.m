 img1 = double(imread('seeds.jpg'));


I = fft2(img1);



I2 = ifft2(I);



subplot(2,3,1);imshow(uint8(img1));
subplot(2,3,2);imshow(real(I));
subplot(2,3,3);imagesc(100*log(1+abs(fftshift(I)))); colormap(gray);title('magnitude spectrum');
subplot(2,3,4);imagesc(angle(I)); colormap(gray);title('phase spectrum');
subplot(2,3,5);imshow(uint8(real(I2)));

