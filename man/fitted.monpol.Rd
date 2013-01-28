\name{fitted.monpol}
\alias{fitted.monpol}
\alias{fitted.values.monpol}
\title{
Extract Model Fitted Values
}
\description{
  \code{fitted} method for \sQuote{monpol} objects.
}
\usage{
\method{fitted}{monpol}(object, scale = c("original", "fitted"), \dots)
}
\arguments{
  \item{object}{A \sQuote{monpol} object.}
  \item{scale}{Extract fitted values on the original scale of the data
    or on the scale used during fitting.}
  \item{\dots}{Additional optionals arguments.  At present no optional
   arguments are used.}
}
\details{
  This is the \code{\link{fitted}} method for objects inheriting from
  class \code{"monpol"}.
}
\value{
   Fitted values extracted from the model object \code{object}.
}
\author{
Berwin A Turlach
}
\keyword{regression}
\keyword{models}
