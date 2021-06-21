    I = double(imread('cameraman.tif'));
    [m,n] = size(I);
    maske1=[-1 0 1; -1 0 1;-1 0 1]; 
    maske2=maske1';
    % Konvolusyon    
    for i=2:m-1
        for j=2:n-1
            blok = I(i-1:i+1 , j-1:j+1);
            Ix(i,j) = sum(sum(maske1.*blok));
            Iy(i,j) = sum(sum(maske2.*blok));
            M(i,j) = sqrt(Ix(i,j)^2+Iy(i,j)^2);
            teta(i,j) = atan(Iy(i,j)/(Ix(i,j)+eps));
        end
    end
    subplot(2,2,1);imshow(Ix);
    subplot(2,2,2);imshow(Iy);
    subplot(2,2,3);imshow(M,[]);
    subplot(2,2,4);imshow(teta);
   