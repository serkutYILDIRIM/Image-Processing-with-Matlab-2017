I=(imread('peppers.png'));
  I=double(I)/255;
if (size(I,3)==3)
  I=(I(:,:,1)+I(:,:,2)+I(:,:,3))/3; % rgb sinyallerinin avarajý
end
windowsize=17;%pencere boyutumuz 
% boþ dizi oluþturuyoruz
dizi = zeros(size(I,1),size(I,2));
% Bunu her pixelin çevresine NxN lik matrisle uyguluyoruz(n tek)
n = floor(windowsize/2); % N yarý büyüklüktedir. [-N:N,-N:N]
for r=1+n:size(I,1)-n
  for c=1+n:size(I,2)-n
    % Sýnýrýn yakýnýndaki pixeller için NxN komþuluðunun olduðunda
    % yapýyoruz
    % yani pixelin yakýnýndaki pixeller için yapýyoruz
    % NxN için ayný komþularýn merkezlerini almayýn
      if r-n <=1
      fromrow=1;
      torow=r+n;
      else
          fromrow=abs(r-n);
          if n+r >= size(I,1)
              torow=size(I,1);
          else
              torow=r+n;
          end
      end
      if c-n <= 1
          fromcol=1;
          tocol=c+n;
      else
          fromcol=abs(c-n);
          if c+n > size(I,2);
              tocol=size(I,2);
          else
              tocol=c+n;
          end
      end
      neighbour = I(fromrow:torow,fromcol:tocol);
      lessoreq=neighbour(neighbour<=I(r,c));
      sumofval=sum(lessoreq);
      pixval=sumofval/(size(neighbour,1)*size(neighbour,2));
      dizi(r,c)=pixval;
    end
  end
  imshow(dizi);