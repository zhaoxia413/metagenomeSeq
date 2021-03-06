% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitZeroLogNormal.R
\name{calcShrinkParameters}
\alias{calcShrinkParameters}
\title{Calculate shrinkage parameters}
\usage{
calcShrinkParameters(fit, coef, mins2, exclude = NULL)
}
\arguments{
\item{fit}{A matrix of fits as outputted by calcZeroComponent or calcPosComponent}

\item{coef}{Coefficient of interest}

\item{mins2}{minimum variance estimate}

\item{exclude}{Vector of features to exclude when shrinking}
}
\description{
Calculate the shrunken variances and variance of parameters of interest across features.
}
\seealso{
\code{\link{fitZeroLogNormal}} \code{\link{fitFeatureModel}}
}
