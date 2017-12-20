\name{monpol}
\alias{monpol}
\title{Monotone Polynomials}
\description{
  Determine the least-squares estimates of the parameters of a monotone
  polynomial 
}
\usage{
monpol(formula, data, subset, weights, na.action,
       degree = 3, K, start,
       a = -Inf, b=Inf,
       trace = FALSE, plot.it = FALSE,
       control = monpol.control(),
       algorithm = c("Full", "Hawkins", "BCD", "CD1", "CD2"),
       ptype = c("SOS", "Elphinstone", "EHH", "Penttila"),
       ctype = c("cge0", "c2"),
       monotone,
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

  \item{degree}{positive integer, a polynomial with highest power equal
    to \code{degree} will be fitted to the data.}

  \item{K}{non-negative integer, a polynomial with highest power
  \eqn{2K+1} will be fitted to the data.}

  \item{start}{optional starting value for the iterative fitting.}
  \item{a,b}{polynomial should be monotone on the interval from a to b.
    If either parameter is finite, parameterisation \dQuote{SOS} has to be used.}

  \item{trace}{print out information about the progress of the
    interative fitting at the start and then every \code{trace}
    iterations.}
  \item{plot.it}{plot the data and initial fit, then plot current fit
    every \code{plot.it} iterations.}
  \item{control}{settings that control the iterative fit; see
    \code{\link{monpol.control}} for details.}
  \item{algorithm}{algorithm to be used.  It is recommended to use
    either \dQuote{Full} or \dQuote{Hawkins}; see both papers in
    \sQuote{References} for details.} 
  \item{ptype}{parameterisation to be used.  It is recommended to use
    the \dQuote{SOS} parameterisation; see the 2016 paper in
    \sQuote{References} for details.}
  \item{ctype}{parameterisation to be used; see paper in
    \sQuote{References} for details.}
  \item{monotone}{only used for parameterisation \dQuote{SOS} to enforce the
    kind of monotonicity desired over the interval \eqn{[a,b]}, should
    be \dQuote{increasing} or \dQuote{decreasing}.}
  \item{model, x, y}{logicals.  If \code{TRUE} the corresponding
    components of the fit (the model frame, the model matrix, the
    response, the QR decomposition) are returned.}
}
\details{
  A \code{monpol} object is a type of fitted model object. It has
  methods for the generic function \code{\link{coef}},
  \code{\link{fitted}}, \code{\link{formula}},
  \code{\link{logLik}}, \code{\link{model.matrix}},
  \code{\link{predict}}, \code{\link{print}}, \code{\link{residuals}}.

  The parameterisation type \dQuote{SOS} with the \dQuote{Full}
  algorithm is currently the recommended fitting procedure and is
  discussed in the 2016 paper in \sQuote{References}.  For this
  parameterisation the argument \code{ctype} is ignored.

  The \dQuote{Hawkins} algorithm is also recommended and discussed in
  both papers in the \sQuote{References}.

  The parameterisations \dQuote{Elphinstone}, \dQuote{EHH} and
  \dQuote{Pentilla}, for which the argument \dQuote{ctype} defines a
  further variation of parameterisation, work together with algorithms
  \dQuote{Full}, \dQuote{BCD}, \dQuote{CD1} and \dQuote{CD2}.  These
  parameterisations and algorithms are discussed in the 2013 paper in
  \sQuote{References}. 
}
\value{
  \code{monpol} returns an object of \code{\link{class}} \code{"monpol"}
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
\examples{
monpol(y~x, w0)
}
\keyword{nonlinear}
\keyword{regression}
\keyword{models}
