function  x=moyenne(I)
    R = single(I(:,:,1));
    V = single(I(:,:,2));
    B = single(I(:,:,3));
    X=[R(:) V(:) B(:)];
    rvb= (1./max(1,R(:)+V(:)+B(:))).*X;
    x=[mean(rvb(:,1)) mean(rvb(:,2))];
end
    