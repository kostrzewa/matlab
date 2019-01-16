for mu 0:3
  for nu 0:3
    if (mu ~= nu)
      printf('%d %d',mu,nu)
      Gamma(mu)*Gamma(nu)
    end
  end
end