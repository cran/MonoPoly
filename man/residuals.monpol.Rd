\name{residuals.monpol}
\alias{residuals.monpol}
\alias{resid.monpol}
\title{
Extract Model Residuals
}
\description{
  \code{residuals} method for \sQuote{monpol} objects.
}
\usage{
\method{residuals}{monpol}(object, scale = c("original", "fitted"), \dots)
}
\arguments{
  \item{object}{A \sQuote{monpol} object.}
  \item{scale}{Extract residuals on the original scale of the data
    or on the scale used during fitting.}
  \item{\dots}{Additional optionals arguments.  At present no optional
   arguments are used.}
}
\details{
  This is the \code{\link{residuals}} method for objects inheriting from
  class \code{"monpol"}.
}
\value{
   Residuals extracted from the model object \code{object}.
}
\author{
Berwin A Turlach
}
\keyword{regression}
\keyword{models}
