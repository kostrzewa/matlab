% print sigma matrices in tmLQCD basis

function Sigmas()
  for mu = 0:3
    for nu = 0:3
      if( mu != nu )
        printf('mu=%d nu=%d\n',mu,nu);
        B = 0.5 * Commutator( Gamma(mu), Gamma(nu) )
      end
    end
  end