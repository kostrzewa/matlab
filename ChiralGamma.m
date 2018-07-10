function ret = ChiralGamma(mu)
  ret = zeros(4);
  if(mu == 0)
    ret(1:2, 3:4) = eye(2);
    ret(3:4, 1:2) = eye(2);
  else
    ret(1:2, 3:4) = i*Sigma(mu);
    ret(3:4, 1:2) = -i*Sigma(mu);
  end