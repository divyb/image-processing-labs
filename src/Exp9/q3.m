#Gaussian High Pass Filter 
a=imread('sunflower.jpg');
a=rgb2gray(a);
a=double(a);

[row col]=size(a);
M=row
N=col
CF=input('enter the cut off frequency');

for x=1:1:row
    for y=1:1:col
        Dx=((x-(M/2))^2+(y-(N/2))^2)^0.5;
        D=Dx*Dx;
        H(x,y)=1-exp(-D/(2*CF*CF));
    end
end

vv=fft2(a);
vc=fftshift(vv);
f=vc.*H;
F=abs(ifft2(f));

subplot(2,2,1); imshow(uint8(a));
subplot(2,2,2);mesh(H);
subplot(2,2,3);imshow(uint8(F));
