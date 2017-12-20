\name{monpol.control}
\alias{monpol.control}
\title{
Control the Iterations in monpol
}
\description{
  Allow the user to set some characteristics of the \code{monpol}
  monotone polynomial fitting algorithm.
}
\usage{
monpol.control(maxiter = 1000, tol = 1e-05,
               tol1=1e-10, tol2=1e-07, tolqr=1e-07)
}
\arguments{
  \item{maxiter}{A positive integer specifying the maximum number of
    iterations allowed, used in all algorithms.}
  \item{tol}{A positive numeric value specifying an absolute tolerance
    for determining whether entries in the gradient are zero for
    algorithms \sQuote{Full}, \sQuote{BCD}, \sQuote{CD1} and \sQuote{CD2}.}
  \item{tol1}{A positive numeric value, used in algorithm
    \sQuote{Hawkins}. Any number not smaller than \code{-tol1} is deemed
    to be non-negative.}
  \item{tol2}{A positive numeric value, used in algorithm
    \sQuote{Hawkins}.  Any number whose absolute value is smaller than
    \code{tol2} is taken to be zero.}
  \item{tolqr}{A positive numeric value, used in algorithm
    \sQuote{Hawkins} as tolerance for the QR factorisation of the
    design matrix.}
}
\value{
  A \code{list} with exactly five components:
  \item{maxiter}{}
  \item{tol}{}
  \item{tol1}{}
  \item{tol2}{}
  \item{tolqr}{}
  with meanings as explained under \sQuote{Arguments}.
}
\author{Berwin A Turlach <Berwin.Turlach@gmail.com>}
\seealso{
  \code{\link{monpol}}, \code{\link{monpol.fit}}, \code{\link[base]{qr}}
}
\examples{
monpol.control(maxiter = 2000)
monpol.control(tolqr = 1e-10)
}
\keyword{regression}
\keyword{models}
