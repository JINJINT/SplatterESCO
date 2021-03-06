% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{sampleDensity}
\alias{sampleDensity}
\title{Sample density}
\usage{
sampleDensity(n, dens, lower = 0)
}
\arguments{
\item{n}{Number of values to sample}

\item{dens}{Density object to sample from}

\item{lower}{Lower x-axis bound on sampled values}
}
\value{
Vector of sampled values
}
\description{
Sample from a density object using rejection sampling 
(this function is borrowed from \code{\link[splatter]{splatter}}).
}
\details{
Random points (x and y) are generated inside the range of the density object.
If they value is less than the density for that x value (and x is greater
than \code{lower}) then that x value is retained. Ten thousand points are
generated at a time until enough valid values have been sampled.
}
