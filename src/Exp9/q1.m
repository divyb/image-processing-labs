#Ideal High Pass Filter
a=imread('sunflower.jpg');
a=rgb2gray(a);
a=double(a);

[row col]=size(a);
M=row
N=col
CF=input('enter the cut off frequency');

for x=1:1:row
    for y=1:1:col
        D=((x-(M/2))^2+(y-(N/2))^2)^0.5;
        if D>CF;
            H(x,y)=1;
        else
            H(x,y)=0;
        end
    end
end
vv=fft2(a);
vc=fftshift(vv);
f=vc.*H;
F=abs(ifft2(f));

subplot(2,2,1); imshow(uint8(a));
subplot(2,2,2);mesh(H);
subplot(2,2,3);imshow(uint8(F));
