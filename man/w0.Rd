\name{w0}
\alias{w0}
\docType{data}
\title{Simulated w0 data used in Murray et al. (2013)}
\description{This data set gives simulated data from the function  
	\deqn{y = 0.1x^3 + e}
       for \eqn{e \sim N(0,0.01^2)}{e ~ N(0,0.01^2)} and \eqn{x}
       evenly spaced between -1 and 1. 
	}
\format{
  A data frame with 21 observations on the following 2 variables.
  \describe{
    \item{\code{y}}{a numeric vector}
    \item{\code{x}}{a numeric vector}
  }
}
\source{
Murray, K., \enc{Müller}{Mueller}, S. and Turlach,
B.A. (2013). Revisiting fitting monotone polynomials to data,
\emph{Computational Statistics} \bold{28}(5):
1989--2005. Doi:10.1007/s00180-012-0390-5.
}
\examples{
str(w0)
plot(y~x, w0)
monpol(y~x, w0)
}
\keyword{datasets}
