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
  \item{x}{numerical values at which to evaluate polynomials}
  \item{beta}{numerical vector containing the coefficient of the
    polynomial}
}
\value{
  The evaluated polynomial
}
\author{
Berwin A Turlach
}
\examples{
## The function is currently defined as
function (x, beta) 
{
    order <- length(beta)
    res <- beta[order]
    for (i in rev(seq_len(order - 1))) res <- res * x + beta[i]
    res
  }
}
\keyword{utilities}
\keyword{regression}
