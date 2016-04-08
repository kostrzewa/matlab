function ret = M(mu)
  if(mu == 0)
    ret = [ -i 0 0  0; 0 -i 0 0 ;  0 0 i 0; 0 0 0 i ];
  elseif(mu == 1)
    ret = [ -i 0 0 0; 0 i 0 0; 0 0 -i 0; 0 0 0 i ];
  elseif(mu == 2)
    ret = [ 0 i 0 0; i 0 0 0; 0 0 0 i; 0 0 i 0];
  elseif(mu == 3)
    ret = [ i 0 0 0; 0 -i 0 0; 0 0 -i 0; 0 0 0 i];
  end

