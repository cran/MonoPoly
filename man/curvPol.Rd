\name{curvPol}
\alias{curvPol}
\title{
  Evaluating the Curvature of Polynomials
}
\description{
  Function to evaluate the curvature of polynomials
}
\usage{
curvPol(x, beta)
}
\arguments{
  \item{x}{numerical values at which to evaluate the curvature of
    polynomials, can be 
    provided in a vector, matrix, array or data frame}
  \item{beta}{numerical vector containing the coefficient of the
    polynomial}
}
\value{
  The result of evaluating the curvature of the polynomial at the values
  in \code{x}, 
  returned in the same dimension as \code{x} has.
}
\author{
Berwin A Turlach
}
\examples{
beta <- c(1,2,1)

x <- 0:10
curvPol(x, beta)
str(curvPol(x, beta))

x <- cbind(0:10, 10:0)
curvPol(x, beta)
str(curvPol(x, beta))


x <- data.frame(x=0:10, y=10:0)
curvPol(x, beta)
str(curvPol(x, beta))
}
\keyword{utilities}
\keyword{regression}
