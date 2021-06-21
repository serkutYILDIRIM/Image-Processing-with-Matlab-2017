I=imread('cameraman.tif');
g=5;
 t=-3:3
    f1=((-2*t)./(g^2)).*exp(-t.^2./g^2);
    Gx= conv2(I, f1);
    f2=exp((t.^2)./(g^2));
    Gy=conv2(I, f2);
    f3=(2/(g^2))*(((2*(t.^2)./(g^2))-1).*exp((t.^2)./(g^2)));
    Gxx=conv2(I, f3);
    f4=(2*t./(g^2)).*exp((t.^2)./(g^2));
    Gxy=conv2(I, f4);
    Gyy=conv2(I, f2);

subplot(3,3,1);imshow(Gx,[]);
    subplot(3,3,2);imshow(Gy,[]);
    subplot(3,3,3);imshow(Gxx,[]);
    subplot(3,3,4);imshow(Gxy,[]);
    subplot(3,3,5);imshow(Gyy,[]);
    