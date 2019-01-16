# The definition of the Gamma matrices as given in A. Shindler's review
function ret = ShindlerGamma(mu)
  ret = zeros(4);
  ret(1:2, 3:4) = Shindler_e(mu);
  ret(3:4, 1:2) = Shindler_e(mu)';