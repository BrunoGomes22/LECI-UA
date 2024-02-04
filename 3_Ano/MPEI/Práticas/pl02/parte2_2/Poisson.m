function val = Poisson (m, k)
  val = (m.^k / factorial(k)) * exp(-m);

end

