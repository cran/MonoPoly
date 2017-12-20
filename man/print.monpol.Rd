\name{print.monpol}
\alias{print.monpol}
\title{
Printing Monotone Polynomials
}
\description{
  \code{print} method for \sQuote{monpol} objects.
}
\usage{
\method{print}{monpol}(x, digits = max(3, getOption("digits") - 3), \dots)
}
\arguments{
  \item{x}{A \sQuote{monpol} object.}
  \item{digits}{minimal number of \emph{significant} digits, see
    \code{\link{print.default}}.}
  \item{\dots}{Additional optionals arguments.  At present only the
    additional arguments for \link{coef.monpol} are used.}
}
\details{
  This is the \code{\link{print}} method for objects inheriting from
  class \code{"monpol"}.
}
\value{
   \code{x} returned invisibly.
}
\author{
Berwin A Turlach <Berwin.Turlach@gmail.com>
}
\keyword{print}
