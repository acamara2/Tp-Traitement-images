function      [mu, Sigma]=estimation_mu_Sigma(X)
              mu=(1/size(X,1))*(X.')*(ones(size(X,1),1));
              X_centre=X-(ones(size(X,1),1))*(mu.');
              Sigma=(1/size(X,1))*(X_centre')*X_centre;
end