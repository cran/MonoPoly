\name{evalPol}
\alias{evalPol}
\title{
  Evaluating Polynomials
}
\description{
  Function to evaluate polynomials in a numerical robust way using the
  Horner scheme
}
\usage{
evalPol(x, beta)
}
\arguments{
  \item{x}{numerical values at which to evaluate polynomials, can be
    provided in a vector, matrix, array or data frame}
  \item{beta}{numerical vector containing the coefficient of the
    polynomial}
}
\value{
  The result of evaluating the polynomial at the values in \code{x},
  returned in the same dimension as \code{x} has.
}
\author{
Berwin A Turlach
}
\examples{
## The function is currently defined as
function (x, beta) 
{
    res <- 0
    for(bi in rev(beta))
      res <- res*x + bi
    res
  }

beta <- c(1,2,1)

x <- 0:10
evalPol(x, beta)
str(evalPol(x, beta))

x <- cbind(0:10, 10:0)
evalPol(x, beta)
str(evalPol(x, beta))


x <- data.frame(x=0:10, y=10:0)
evalPol(x, beta)
str(evalPol(x, beta))
}
\keyword{utilities}
\keyword{regression}
