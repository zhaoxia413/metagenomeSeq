% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitTimeSeries.R
\name{fitTimeSeries}
\alias{fitTimeSeries}
\title{Discover differentially abundant time intervals}
\usage{
fitTimeSeries(
  obj,
  formula,
  feature,
  class,
  time,
  id,
  method = c("ssanova"),
  lvl = NULL,
  include = c("class", "time:class"),
  C = 0,
  B = 1000,
  norm = TRUE,
  log = TRUE,
  sl = 1000,
  featureOrder = NULL,
  ...
)
}
\arguments{
\item{obj}{metagenomeSeq MRexperiment-class object.}

\item{formula}{Formula for ssanova. Of the form: abundance ~ ... where ... includes any pData slot value.}

\item{feature}{Name or row of feature of interest.}

\item{class}{Name of column in phenoData of MRexperiment-class object for class memberhip.}

\item{time}{Name of column in phenoData of MRexperiment-class object for relative time.}

\item{id}{Name of column in phenoData of MRexperiment-class object for sample id.}

\item{method}{Method to estimate time intervals of differentially abundant bacteria (only ssanova method implemented currently).}

\item{lvl}{Vector or name of column in featureData of MRexperiment-class object for aggregating counts (if not OTU level).}

\item{include}{Parameters to include in prediction.}

\item{C}{Value for which difference function has to be larger or smaller than (default 0).}

\item{B}{Number of permutations to perform.}

\item{norm}{When aggregating counts to normalize or not.}

\item{log}{Log2 transform.}

\item{sl}{Scaling value.}

\item{featureOrder}{Hierarchy of levels in taxonomy as fData colnames}

\item{...}{Options for ssanova}
}
\value{
List of matrix of time point intervals of interest, Difference in abundance area and p-value, fit, area permutations, and call.

A list of objects including:
\itemize{
 \item{timeIntervals - Matrix of time point intervals of interest, area of differential abundance, and pvalue.}
 \item{data  - Data frame of abundance, class indicator, time, and id input.}
 \item{fit - Data frame of fitted values of the difference in abundance, standard error estimates and timepoints interpolated over.}
 \item{perm - Differential abundance area estimates for each permutation.}
 \item{call - Function call.}
}
}
\description{
Calculate time intervals of significant differential abundance.
Currently only one method is implemented (ssanova). fitSSTimeSeries is called with method="ssanova".
}
\examples{

data(mouseData)
res = fitTimeSeries(obj=mouseData,feature="Actinobacteria",
   class="status",id="mouseID",time="relativeTime",lvl='class',B=2)

}
\seealso{
\code{\link{cumNorm}} \code{\link{fitSSTimeSeries}} \code{\link{plotTimeSeries}}
}
