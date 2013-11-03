\name{monpol}
\alias{monpol}
\title{Monotone Polynomials}
\description{
  Determine the least-squares estimates of the parameters of a monotone
  polynomial 
}
\usage{
monpol(formula, data, subset, weights, na.action,
       degree=3, K, start, trace = FALSE, plot.it = FALSE,
       control = monpol.control(),
       algorithm = c("Full", "Hawkins", "BCD", "CD1", "CD2"),
       ptype = c("Elphinstone", "EHH", "Penttila"),
       ctype = c("cge0", "c2"),
       model=FALSE, x=FALSE, y=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{formula}{an object of class \code{"\link{formula}"} (or one that
    can be coerced to that class): a symbolic description of the
    model to be fitted.}
  \item{data}{an optional data frame, list or environment (or object
    coercible by \code{\link{as.data.frame}} to a data frame) containing
    the variables in the model.  If not found in \code{data}, the
    variables are taken from \code{environment(formula)},
    typically the environment from which \code{monpol} is called.}

  \item{subset}{an optional vector specifying a subset of observations
    to be used in the fitting process.}

  \item{weights}{an optional vector of weights to be used in the fitting
    process.  Should be \code{NULL} or a numeric vector.}

  \item{na.action}{a function which indicates what should happen
    when the data contain \code{NA}s.  The default is set by
    the \code{na.action} setting of \code{\link{options}}, and is
    \code{\link{na.fail}} if that is unset.  The \sQuote{factory-fresh}
    default is \code{\link{na.omit}}.  Another possible value is
    \code{NULL}, no action.  Value \code{\link{na.exclude}} can be useful.}

  \item{degree}{a polynomail with highest power equal to \code{degree}
    will be fitted to the data.}

  \item{K}{a polynomial with highest power \eqn{2K+1} will be fitted to
    the data.}

  \item{start}{optional starting value for the iterative fitting.}
  \item{trace}{print out information about the progress of the
    interative fitting at the start and then every \code{trace}
    iterations.}
  \item{plot.it}{plot the data and initial fit, then plot current fit
    every \code{plot.it} iterations.}
  \item{control}{settings that control the iterative fit; see
    \code{\link{monpol.control}} for details.}
  \item{algorithm}{algorithm to be used.  It is recommended to use
    either \sQuote{Full} or \sQuote{Hawkins}; see paper in
    \sQuote{References} for details.} 
  \item{ptype}{parameterisation to be used; see paper in
    \sQuote{References} for details.}
  \item{ctype}{parameterisation to be used; see paper in
    \sQuote{References} for details.}
  \item{model, x, y}{logicals.  If \code{TRUE} the corresponding
    components of the fit (the model frame, the model matrix, the
    response, the QR decomposition) are returned.}
}
\details{
  A \code{monpol} object is a type of fitted model object. it has
  methods for the generic function \code{\link{coef}},
  \code{\link{fitted}}, \code{\link{formula}},
  \code{\link{logLik}}, \code{\link{model.matrix}},
  \code{\link{predict}}, \code{\link{print}}, \code{\link{residuals}}. 
}
\value{
  \code{monpol} returns an object of \code{\link{class}} \code{"monpol"}
}
\references{
Murray, K., Mueller, S. and Turlach, B.A. (2013). Revisiting fitting
monotone polynomials to data, \emph{Computational
Statistics} \bold{28}(5): 1989--2005. Doi:10.1007/s00180-012-0390-5.  
}
\author{
Berwin A Turlach
}
\examples{
monpol(y~x, w0)
}
\keyword{nonlinear}
\keyword{regression}
\keyword{models}
