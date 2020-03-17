function Beta_chapeau = MCO(x, y)
  A=[x.^2 x.*y y.^2 x y ones(200,1);1 0 1 0 0 0];
  
  A_pseudo=pinv(A);
  b=zeros(201,1);
  b(201,1)=1;
  Beta_chapeau= A_pseudo*b;