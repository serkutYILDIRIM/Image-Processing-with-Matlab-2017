A=input('brightness factor?');
B=imread('peppers.png');
[x,y,z]=size(B);
%Resimdeki pixellerin yerlerini deðiþtiriyoruz
for i=1:1:x
    for j=1:1:y
        for k=1:1:z
        C(i,j,k)=B(i,j,k)+A;
        end
    end
end
%Resimleri çizdiriyoruz
subplot(1,2,1),subimage(B),title('Before');
subplot(1,2,2),subimage(C),title('After');
%
xlabel(sprintf('Bringhness increased by factor of %g',A));