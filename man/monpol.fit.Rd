\name{monpol.fit}
\alias{monpol.fit}
\alias{SOSpol.fit}
\title{Monotone Polynomials}
\description{
  This is the basic computing engine called by \code{\link{monpol}} used to fit
  monotonic polynomials.  These should usually \emph{not} be used
  directly unless by experienced users.
}
\usage{
monpol.fit(x, y, w, K=1, start, trace = FALSE, plot.it = FALSE,
           control = monpol.control(),
           algorithm = c("Full", "Hawkins", "BCD", "CD1", "CD2"),
           ptype = c("Elphinstone", "EHH", "Penttila"),
           ctype = c("cge0", "c2"))
SOSpol.fit(x, y, w = NULL, deg.is.odd, K, start, a, b,
           monotone = c("increasing", "decreasing"),
           trace = FALSE, plot.it = FALSE, type,
           control = monpol.control())

}
\arguments{
  \item{x}{vector containing the observed values for the regressor variable.}
  \item{y}{vector containing the observed values for the response
    variable; should be of same length as \code{x}.}
  \item{w}{optional vector of weights; should be of the same length as
    \code{x} if specified.}
  \item{deg.is.odd, K}{\dQuote{deg.is.odd} is a logical, \dQuote{K} is a
    non negative integer. If \dQuote{deg.is.odd} is \code{TRUE} then a
    polynomial with highest power \eqn{2K+1} will be fitted to 
    the data, otherwise the highest order will be \eqn{2K}.}
  \item{start}{optional starting value for the iterative fitting.}
  \item{a,b, type}{polynomial should be monotone on the interval from \eqn{a}
    to \eqn{b}; \dQuote{type} should be 0 if neither of the boundaries
    is finite, 1 if \eqn{a} if finite but not \eqn{b} and 2 if both
    boundaries are finite.}
  \item{monotone}{force the desired monotonicity in case the default
    choice is wrong.}
  \item{trace}{print out information about the progress of the
    interative fitting at the start and then every \code{trace}
    iterations.}
  \item{plot.it}{plot the data and initial fit, then plot current fit
    every \code{plot.it} iterations.}
  \item{control}{settings that control the iterative fit; see
    \code{\link{monpol.control}} for details.}
  \item{algorithm}{algorithm to be used; see \code{\link{monpol}} for
    details.} 
  \item{ptype}{parameterisation to be used; see \code{\link{monpol}} for
    details.} 
  \item{ctype}{parameterisation to be used; see \code{\link{monpol}} for
    details.} 
}
\value{
  a list with components
  \item{par}{the fitted parameters.}
  \item{grad}{the gradient of the objective function at the fitted
    parameters.}
  \item{beta}{the coefficients of the fitted polynomial in the
    \sQuote{beta} parameterisation; on the fitted scale.}
  \item{RSS}{the value of the objective function; on the fitted scale.}
  \item{niter}{number of iterations.}
  \item{converged}{indicates whether algorithm has converged.}
  \item{ptype}{input parameter \code{ptype}.}
  \item{ctype}{input parameter \code{cptype}.}
  \item{beta.raw}{the coefficients of the fitted polynomial in the
    \sQuote{beta} parameterisation; on the original scale.}
  \item{fitted.values}{the fitted values; on the fitted scale.}
  \item{residuals}{the residuals; on the fitted scale.}
  \item{K}{input parameter \code{K}.}
  \item{minx}{the minimum value in the vector \code{x}.}
  \item{sclx}{the difference between the maximum and minimum values in
    the vector \code{x}.} 
  \item{miny}{the minimum value in the vector \code{y}.}
  \item{scly}{the difference between the maximum and minimum values in
    the vector \code{y}.}
  \item{algorithm}{input paramater \code{algorithm}.}
}
\references{
Murray, K., \enc{Müller}{Mueller}, S. and Turlach, B.A. (2016). Fast and
flexible methods for monotone polynomial fitting, \emph{Journal of
Statistical Computation and Simulation} \bold{86}(15):
2946--2966, \doi{10.1080/00949655.2016.1139582}.
  
Murray, K., \enc{Müller}{Mueller}, S. and Turlach,
B.A. (2013). Revisiting fitting monotone polynomials to data,
\emph{Computational Statistics} \bold{28}(5):
1989--2005, \doi{10.1007/s00180-012-0390-5}.
}
\author{
Berwin A Turlach <Berwin.Turlach@gmail.com>
}
\seealso{
\code{\link{monpol}} which you should use for fitting monotonic
polynomials unless you know better.
}
\keyword{nonlinear}
\keyword{regression}
\keyword{models}
