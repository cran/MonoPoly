\name{predict.monpol}
\alias{predict.monpol}
\title{Predicting from Monotone Polynomial Fits}
\description{
 \code{predict.monpol} produces predicted values, obtained by evaluating
  the monotone polynomial in the frame \code{newdata}.
}
\usage{
\method{predict}{monpol}(object, newdata, scale = c("original", "fitted"), ...)
}
\arguments{
  \item{object}{A \sQuote{monpol} object.}
  \item{newdata}{A named list or data frame in which to look for variables with
   which to predict.  If \code{newdata} is
   missing the fitted values at the original data points are returned.}
  \item{scale}{Predict values on the original scale of the data
    or on the scale used during fitting.  Data in \code{newdata} is
    assumed to be on the indicated scale.}
  \item{\dots}{Additional optionals arguments.  At present no optional
   arguments are used.}
}
\details{
  This is the \code{\link{predict}} method for objects inheriting from
  class \code{"monpol"}.
}
\value{
  \code{predict.monpol} produces a vector of predictions.
}
\author{
Berwin A Turlach <Berwin.Turlach@gmail.com>
}
\keyword{nonlinear}
\keyword{regression}
\keyword{models}
