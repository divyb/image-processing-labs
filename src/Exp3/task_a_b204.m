img1 = imread('seeds.jpg');
[row col] = size(img1);

h = zeros(1,256);

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

figure();bar(h);
