I=imread('rice.png');
[m,n]=size(I);
T=mean(I(:));
oT=0;
eps=0.1;
tic
while abs(oT-T)>eps
    G1=[]; G2=[]; G1ind=0; G2ind=0;
    for i=1:m
        for j=1:n
            if  I(i,j)>T
                G1ind=G1ind+1;
                G1(G1ind)=I(i,j);
            else
                G2ind=G2ind+1;
                G2(G2ind)=I(i,j);
            end
        end        
    end  
    oT=T;
    m1=mean(G1);
    m2=mean(G2);
    T=(m1+m2)/2;
end
toc
subplot(2,1,1);
imshow(I);
subplot(2,1,2);
 imshow (double(I).*(I>T),[]);
 
