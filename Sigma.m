# The usual Pauli matrices
function ret = Sigma(k)
  if(k == 0)
    ret = [1 0; 0 1];
  elseif(k == 1)
    ret = [ 0 1; 1 0 ];
  elseif(k == 2)
    ret = [ 0 -i; i 0 ];
  elseif(k == 3)
    ret = [1 0; 0 -1];
  end