% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SRS.R
\name{SRS}
\alias{SRS}
\title{Simple Random Sample}
\usage{
SRS(popvalues, n)
}
\arguments{
\item{popvalues}{are values of the population.  \code{NA}s and \code{Inf}s are allowed but will be removed from the population.}

\item{n}{the sample size}
}
\value{
The function \code{srs()} returns a matrix containing the possible simple random samples of size \code{n} taken from a population of finite values \code{popvalues}.
}
\description{
Computes all possible samples from a given population using simple random sampling
}
\details{
If non-finite values are entered as part of the population, they are removed; and the returned simple random sample computed is based on the remaining finite values.
}
\examples{

SRS(popvalues = c(5, 8, 3, NA, Inf), n = 2)

}
\seealso{
\code{\link{combn}}
}
\author{
Alan T. Arnholt <arnholtat@appstate.edu>
}
\keyword{programming}
