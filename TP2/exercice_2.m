load SG1.mat
beta_chapeau=MCO2(Data,DataMod);

%reconstruction de l'image

I_reconstruite=(-1/beta_chapeau(1))*(log(ImMod)-beta_chapeau(2));
imagesc(I_reconstruite)
    
% RMSE
a=I(:);
b=I_reconstruite(:);
RMSE = sqrt(mean((a-b).^2))
colormap gray