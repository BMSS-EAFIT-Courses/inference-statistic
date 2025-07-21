#Este código grafica la función generadora de momentos para una distribución Binomial
mgf_binomial <- function(t, n = 10, p = 0.3) {
  (1 - p + p * exp(t))^n
}

t_vals <- seq(-3, 3, length.out = 300)
mgf_vals <- sapply(t_vals, mgf_binomial)

plot(t_vals, mgf_vals, type = "l", lwd = 2,
     main = expression("F.G.M. para X ~ Binomial(10, 0.3)"),
     xlab = "t", ylab = expression(M[X](t)))
grid() 
