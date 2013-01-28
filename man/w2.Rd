\name{w2}
\alias{w2}
\docType{data}
\title{Simulated w2 data used in Murray et al. (2013)}
\description{
Simulated data from the function 
\deqn{y_{ij} = 4 \pi - x_i + \cos(x_i - \frac{\pi}{2}) + e_{ij}}{%
  y_ij = 4 \pi - x_i + cos(x_i - \pi/2) + e_ij }
 for \eqn{x_i = 0,1, \ldots , 12} ; \eqn{n_i = 5} for \eqn{i=0} and
 \eqn{n_i=3} otherwise; \eqn{e_{ij} \sim N(0,0.5^2)}{e_ij ~ N(0, 0.5^2)}
}
\format{
  A data frame with 41 observations on the following 2 variables.
  \describe{
    \item{\code{y}}{a numeric vector}
    \item{\code{x}}{a numeric vector}
  }
}
\source{
Murray, K., Müller, S. and Turlach, B.A. (2013). Revisiting fitting
monotone polynomials to data, Computational
Statistics. Doi:10.1007/s00180-012-0390-5.  
}
\examples{
str(w2)
plot(y~x, w2)
monpol(y~x, w2)
monpol(y~x, w2, K=2)
}
\keyword{datasets}
