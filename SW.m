% compute random even_odd preconditioned clover
% with twisted mass term in a mixed dirac and colour
% indexed matrix (4x4 matrix of 3x3 colour matrices)

function SW()
  % 1_c = identity in colour space
  % M = (1_c X 1_d +- i m 1_c X gamma5_d + csw T_ee_cd )
  m = 1;
  csw = 1;
  
  % 1_c X 1_d +- i m 1_c X gamma5_d
  M = [ eye(3)+i*m*eye(3) zeros(3) zeros(3) zeros(3);
  zeros(3) eye(3)+i*m*eye(3) zeros(3) zeros(3);
  zeros(3) zeros(3) eye(3)-i*m*eye(3) zeros(3);
  zeros(3) zeros(3) zeros(3) eye(3)-i*m*eye(3) ];
  
  % compute the SW term
  % T_ee_cd = i/2 * sigma_munu * F_munu
  N = zeros(12);
  for mu = 0:3
    for nu = 0:3
      S = 0.5 * i * Commutator( Gamma(mu), Gamma(nu) );
      if(mu == nu)
        F = zeros(3);
      else
        F = rand(3)+i*rand(3);
        % project onto anti-hermitian part
        F = 0.5 * (F - F');
      end
      T = [ 
           S(1,1)*F S(1,2)*F S(1,3)*F S(1,4)*F;
           S(2,1)*F S(2,2)*F S(2,3)*F S(2,4)*F;
           S(3,1)*F S(3,2)*F S(3,3)*F S(3,4)*F;
           S(4,1)*F S(4,2)*F S(4,3)*F S(4,4)*F
          ];
      N = N + 0.5 * i * csw * T;
    end
  end
  
  M = M + N;
  
  % invert M to obtain what we're really after
  % M = (1 +- im gamma5 + T_ee)^(-1)

  M
  
  M = inv(M);

  M

  % compute the trace in dirac space
  for mu = 0:3
    for nu = 0:3
      if( mu ~= nu )
        printf('BEGIN %d %d\n',mu,nu)
        % sigma(mu,nu) (in spin)
        S = i * 0.5 * Commutator( Gamma(mu), Gamma(nu) );
        % S external product 1_c
        A = [ eye(3)*S(1,1) eye(3)*S(1,2) eye(3)*S(1,3) eye(3)*S(1,4);
        eye(3)*S(2,1) eye(3)*S(2,2) eye(3)*S(2,3) eye(3)*S(2,4);
        eye(3)*S(3,1) eye(3)*S(3,2) eye(3)*S(3,3) eye(3)*S(3,4);
        eye(3)*S(4,1) eye(3)*S(4,2) eye(3)*S(4,3) eye(3)*S(4,4) ];
        % ( i sigma ( 1 +- i gamma5 + T_ee )^-1 )
        R = i * A * M;
        % Tr_Dirac R
        TR = R(1:3,1:3) + R(4:6,4:6) + R(7:9,7:9) + R(10:12,10:12)
        printf('END %d %d\n\n\n',mu,nu)
      end
    end
  end 
  
  printf('Trace: %f', TR)
