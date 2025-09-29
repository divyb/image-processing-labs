%%histogram equalization
img = imread('seeds.jpg');
img = double(img);

[row col] = size(img);
historiginal = zeros(1,255);
histenhanced = zeros(1,255);
limit = max(max(img));

for i = 1:row
  for j = 1:col
    if img(i,j)==0
      img(i,j)=1;
    endif
  endfor
endfor


for i = 1:row
  for j = 1:col
    t = img(i,j);
    historiginal(t) = historiginal(t) + 1;    
  endfor
endfor

pdf = historiginal/(row*col);

cdf(1) = pdf(1);

for i=2:limit
  cdf(i) = pdf(i)+cdf(i-1);
endfor

cdf = round(cdf*limit);
cdf = cdf +1;

for i = 1:row
   for j = 1:col
     temp = img(i,j);
     imgout(i,j) = cdf(temp);
     t = imgout(i,j);
     histenhanced(t) = histenhanced(t) + 1;
   endfor
 endfor
 
subplot(2,2,1);stem(historiginal);
subplot(2,2,2);imshow(uint8(img));
subplot(2,2,3);stem(histenhanced);
subplot(2,2,4);imshow(uint8(imgout));