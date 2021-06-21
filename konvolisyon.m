x=[1 0 0;0 2 0;0 0 1]
a=[5 10 15 20 25 30;
   35 40 45 50 55 60;
   65 70 75 80 85 90;
   95 100 105 110 120 125;
   130 135 140 145 150 155;
   160 165 170 175 180 185;
   190 195 200 205 210 215;
   220 225 230 235 240 245;
   250 255 260 265 270 275;
   280 285 290 295 300 305;
   310 315 320 325 330 335;
   340 345 350 355 359 360;]

h= sin(a);
[k1,k2]=size(h);
[n1,n2]=size(x);
satir=n1+k1-1;
sutun=n2+k2-1;
for z=1:satir
    for w=1:sutun
        sonuc=0;
        for s=1:n2
            for t=1:n1
                if (((z+1)-t)>0 && ((z+1)-t)<=k1 )
                    if(((w+1)-s)>0 && ((w+1)-s)<=k2 )
                cevap=x(t,s).*h(((z+1)-t),((w+1)-s));
                sonuc=sonuc+cevap;
                    end
                end
            end
        end
     y(z,w)=sonuc;   
    end      
end
     y
     figure,imshow(h);title('a resmi');
     figure,imshow(y);title('konvolisyon uygulanmýþ');
     minimum = min(y);
     maximum = max(y);
     