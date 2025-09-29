%%histogram Stretching
img1 = imread('seeds.jpg');
rmin = min(min(img1));
rmax = max(max(img1));
smin = 1;
smax = 255;


[row col] = size(img1);

h = zeros(1,256);
z = zeros(1,256);
for n=1:row
  for m=1:col
    if img1(n,m)==0
      img1(n,m)=1;
    endif
  endfor
endfor


for n=1:row
  for m=1:col
    t = img1(n,m);
    h(t) = h(t)+1;
  endfor
endfor



for n=1:row
  for m=1:col
    img2(n,m)= (((smax-smin)/(rmax-rmin))*(img1(n,m)-rmin)) + smin;
  endfor
endfor

for n=1:row
  for m=1:col
    k = img2(n,m);
    z(k) = z(k) + 1;
  endfor
endfor

subplot(2,2,1);plot(h);
subplot(2,2,3);plot(z);
subplot(2,2,2);imshow(uint8(img1));
subplot(2,2,4);imshow(uint8(img2));
