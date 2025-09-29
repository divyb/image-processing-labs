#Ideal Low pass filter:
clear all
clc
img = imread('rgb.jpg');
img1 = rgb2gray(img);
img2 = double(img1);
[row col]=size(img2);

D0 = input('Enter the cut-off frequency:    ');

for u=1:1:row
  for v=1:1:col
    D=((u-(row/2))^2+(v-(col/2))^2)^0.5;
    
    if D<D0
      H(u,v)=1;
      
    else
      H(u,v)=0;
    endif
  endfor
endfor
vv=fft2(img2);
vc=fftshift(vv);

X=vc.*H;
X=abs(ifft2(X));

subplot(2,2,1);imshow(uint8(img2));
subplot(2,2,2);mesh(H);
subplot(2,2,3);imshow(uint8(X))
subplot(2,2,4);imagesc(H),colormap(gray);
