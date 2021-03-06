\name{normalizer}
\alias{normalizer}
\title{
Normalize data
}
\description{
\code{normalizer} normalizes any data set using a chosen method (see Details). 
It may be used when the data from an experiment have considerable variation regarding the 
background and plateau signal.
}
\usage{
normalizer(y, method.norm = "none", qnL = 0.03)
}

\arguments{
  \item{y}{
is a vector containing the fluorescence values.
}
  \item{method.norm}{
  is a argument to use a "none", "minm", "max", "luqn", or
	"zscore" normalization. See Details.
}
  \item{qnL}{
  is the quantile to be used for the quantile normalization. Ignored if 
\code{method.norm} is not equal to "luqn".
}
}
\details{
The parameter \code{qnL} is 
a user defined quantile which is used for the quantile normalization. A 
quantile normalization herein refers to an approach which is less prone to 
outliers than a normalization based on the minimum and the maximum of an 
amplification curve.
\code{minm} does a min-max normalization between 0 and 1 (see Roediger et al. 
2013 for explanation).
\code{max} does a normalization to the maximum value (MFI/max(MFI)).
\code{luqn} does a quantile normalization based on a symmetric proportion 
as defined by the \code{qnL} parameter (e.g., qnL = 0.03 equals 3 and 97 
percent quantiles).
\code{zscore} performs a z-score normalization with a mean of 0 and a 
standard deviation of 1.

}
\value{
A vector of normalized fluorescence values.
}
\references{
Surface Melting Curve Analysis with R. S. Roediger, A. Boehm and I. 
Schimke. \emph{The R Journal}. 5(2):37--52, 2013. 
\url{http://journal.r-project.org}
}
\author{
Stefan Roediger, Michal Burdukiewicz
}


\seealso{
\code{\link{CPP}}
}
\examples{
normalizer(C17[2L:50, 1], "minm")
}

\keyword{ manip }
\keyword{ maximum }
\keyword{ z-score }
\keyword{ normalization }
