# The 2x2 basis matrices used for the gamma matrix construction
function ret = Shindler_e(k)
  if(k == 0)
    ret = [-1 0; 0 -1];
  elseif(k == 1)
    ret = -i*Sigma(k);
  elseif(k == 2)
    ret = -i*Sigma(k);
  elseif(k == 3)
    ret = -i*Sigma(k);
  end