\name{model.matrix.monpol}
\alias{model.matrix.monpol}
\title{
Construct Design Matrices
}
\description{
  \code{model.matrix} creates a design (or model) matrix for
  \sQuote{monpol} objects. 
}
\usage{
\method{model.matrix}{monpol}(object, scale = c("original", "fitted"), \dots)
}
\arguments{
  \item{object}{A \sQuote{monpol} object.}
  \item{scale}{Create design matrix on the original scale of the data
    or on the scale used during fitting.}
  \item{\dots}{Additional optionals arguments.  At present no optional
   arguments are used.}
}
\details{
  This is the \code{\link{model.matrix}} method for objects inheriting
  from class \code{"monpol"}.
}
\value{
   Design matrix created from the model object \code{object}.
}
\author{
Berwin A Turlach <Berwin.Turlach@gmail.com>
}
\keyword{models}
