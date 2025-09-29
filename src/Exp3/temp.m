img1=imread('seeds.jpg');

a=double(img1);
big=max((max(a)));
[row col]=size(a);
C=row*col;
h=zeros(1,300);
z=zeros(1,300);

%%To ensure tha the values of 'a' are not zero

for x=1:1:row
  for y=1:1:col
    if a(x,y)==0
      a(x,y)=1;
    endif
  endfor
endfor

%%Plotting the histogram of original image

for x=1:1:row
  for y=1:1:col
    t=a(x,y);
    h(t)=h(t)+1;
  endfor
endfor

%%Probability Function

pdf=h/C;
cdf(1)=pdf(1);  

%%Calculating CDF

for m=2:1:big
  cdf(m)=pdf(m)+cdf(m-1);
endfor
new=round(cdf*big);
new=new+1;
for p=1:1:row
  for q=1:1:col
    temp=a(p,q);
    b(p,q)=new(temp);
    t=b(p,q);
    z(t)=z(t)+1;
  endfor
endfor

b=b-1;
figure(1);imshow(uint8(a))
figure(2);bar(h)
figure(3);imshow(uint8(b))
figure(4);bar(z)
