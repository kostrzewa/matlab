% return Gamma matrix in tmLQCD basis
	
function ret = Gamma(mu)
  if(mu == 0)
    ret = [ 0 0  -1 0; 0 0 0  -1;  -1 0 0 0; 0  -1 0 0 ];
  elseif(mu == 1)
    ret = [ 0 0 0  -i; 0 0  -i 0; 0 i 0 0; i 0 0 0 ];
  elseif(mu == 2)
    ret = [ 0 0 0 -1; 0 0 1 0; 0 1 0 0; -1 0 0 0];
  elseif(mu == 3)
    ret = [ 0 0 -i 0; 0 0 0 i; i 0 0 0; 0 -i 0 0];
  elseif(mu == 5)
    ret = [ 1 0 0 0; 0 1 0 0; 0 0 -1 0; 0 0 0 -1];
  end
  


