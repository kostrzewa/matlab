# UKQCD gamma basis
function ret = UkqcdGamma(mu)
  ret = zeros(4);
  if(mu == 1 || mu == 2 || mu == 3)
    ret(3:4, 1:2) = -i*Sigma(mu);
    ret(1:2, 3:4) = i*Sigma(mu);
  elseif( mu == 4 )
    ret(1:2, 1:2) = eye(2);
    ret(3:4, 3:4) = -eye(2);
  end
    