\name{ismonotone}
\alias{ismonotone}
\alias{ismonotone.monpol}
\alias{ismonotone.default}
\title{
  Check whether a polynomial is monotone
}
\description{
  Function to check whether a polynomial is montone over a given interval.
}
\usage{
ismonotone(object, \dots)

\method{ismonotone}{monpol}(object, a = -Inf, b = Inf, EPS = 1e-06, \dots)

\method{ismonotone}{default}(object, a = -Inf, b = Inf, EPS = 1e-06, \dots)
}
\arguments{
  \item{object}{
    Either an object of class \sQuote{\preformatted{monpol}} or a
    numeric vector containing the coefficient of the polynomial.
}
  \item{a}{
    Lower limit of the interval over which the polynomial should be
    montone. 
}
  \item{b}{
    Upper limit of the interval over which the polynomial should be
    montone. 
}
  \item{EPS}{
    Numerical precision, values with absolute value smaller than EPS are
    treated as zero.
}
  \item{\dots}{
    Further arguments passed to or from other methods.
}}
\value{
  \code{TRUE} or \code{FALSE} depending on whether the polynomial is
  montone over (a,b) or not.

  Note that due to numerical precision issues it is possible that a
  polynomial that should be monotone is declared to be not monotone.
}
\author{
  Kevin Murray <Kevin.Murray@uwa.edu.au>

  Berwin A Turlach <Berwin.Turlach@gmail.com>
}
\examples{
  fit <- monpol(y~x, w0)
  ismonotone(fit)

  beta <- c(1,0,2)  ## the polynomial 1 + 2*x^2
  ismonotone(beta)
  ismonotone(beta, a=0)
  ismonotone(beta, b=0)
}
\keyword{utilities}
