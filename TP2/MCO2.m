function beta_chapeau=MCO2(Data,DataMod)

X1 = Data(:);
X2 = log(DataMod(:));
A=[-X1 ones(2500,1)];
A_pseudo=pinv(A);
beta_chapeau=A_pseudo*X2;
