% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ksLdist.R
\name{ksLdist}
\alias{ksLdist}
\title{Simulated Lilliefors' Test of Normality Values}
\usage{
ksLdist(n = 10, sims = 1000, alpha = 0.05)
}
\arguments{
\item{n}{sample size}

\item{sims}{number of simulations}

\item{alpha}{desired alpha level}
}
\description{
Function to visualize the sampling distribution of Dn for simple and
composite hypotheses
}
\examples{
# Figure 10.15
ksLdist(sims=10000,n=10)
}
\author{
Alan T. Arnholt
}
\seealso{
\code{\link{ksdist}}
}
\keyword{distribution}

