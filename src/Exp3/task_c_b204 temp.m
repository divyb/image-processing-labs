img1 = double(imread('seeds.jpg'));
[row col]=size(img1);


historiginal = zeros(1,300);
histmodified = zeros(1,300);
for i=1:row
  for j=1:col
    t = img1(i,j);
    historiginal(t) = historiginal(t)+1;
  endfor
endfor

pdf = (1/(row*col)) * historiginal
cdf = zeros(1,256);

cdf(1) = pdf(1);

for i = 2:256
  cdf(i) = cdf(i-1)+pdf(i);

endfor
  
cdf = round(255*cdf);

for i= 1:row
  for j = 1:col
    t = img1(i,j)+1;
    imgout = cdf(t);
    
  endfor
    
  endfor
  
for i=1:row
  for i=1:col
    t = imgout(i,j);
    histmodified(t) = histmodified(t)+1;
  endfor
endfor


subplot(2,2,1);imshow(uint8(img1));
subplot(2,2,1);plot(historiginal);
subplot(2,2,1);imshow(uint8(imgout));
subplot(2,2,1);plot(histmodified);