function A = matrix_repl(A,B)

 [m,n] = size(A);
 x= (m)/2;
y = (n)/2;
a=x-2;
b=y-2;
A(a+1,b+1)=B(1,1);
 A(a+1,b+2)=B(1,2);
 A(a+1,b+3)=B(1,3);
 A(a+2,b+1)=B(2,1);
 A(a+2,b+2)=B(2,2);
 A(a+2,b+3)=B(2,3);
 A(a+3,b+1)=B(3,1);
 A(a+3,b+2)=B(3,2);
 A(a+3,b+3)=B(3,3); 
end