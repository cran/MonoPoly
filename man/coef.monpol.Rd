\name{coef.monpol}
\alias{coef.monpol}
\title{
Extract Model Coefficients
}
\description{
  \code{coef} method for \sQuote{monpol} objects.
}
\usage{
\method{coef}{monpol}(object, scale = c("original", "fitted"), type = c("beta", "monpar"), \dots)
}
\arguments{
  \item{object}{A \sQuote{monpol} object.}
  \item{scale}{Extract coefficients on the original scale of the data
    or on the scale used during fitting.}
  \item{type}{Extract coefficients in the \sQuote{beta}
    parameterisation of the polynomial or for the monotone
    parameterisation used in the algorithm.}
  \item{\dots}{Additional optionals arguments.  At present no optional
   arguments are used.}
}
\details{
  This is the \code{\link{coef}} method for objects inheriting from
  class \code{"monpol"}.
}
\value{
   Coefficients extracted from the model object \code{object}.
}
\author{
Berwin A Turlach
}
\keyword{regression}
\keyword{models}
