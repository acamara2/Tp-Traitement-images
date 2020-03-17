function      x=estimation_mu_sigma(X)
              mu=(1/size(X))*X.'*ones(size(X),1));
              x_centre=(1/size(X,1))*(X.')*(ones(size(X,1),1));
              X_centre=X-(ones(size(X,1),1))*(x_centre.');
              Sigma=(1/size(X,1))*(X_centre')*X_centre;
              x=[ mu Sigma];
end