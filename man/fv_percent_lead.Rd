% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fv_percent_lead.R
\name{fv_percent_lead}
\alias{fv_percent_lead}
\alias{fv_percent_lead_fixed_relative}
\alias{ffv_percent_lead}
\alias{ffv_percent_lead_fixed_relative}
\title{Percent Difference}
\usage{
fv_percent_lead(x, digits = getOption("numformdigits"), ...)

fv_percent_lead_fixed_relative(
  x,
  fixed.relative = 1,
  digits = getOption("numformdigits"),
  ...
)

ffv_percent_lead(...)

ffv_percent_lead_fixed_relative(...)
}
\arguments{
\item{x}{A numeric vector.}

\item{digits}{The number of digits to use.  Defaults to 1.  Can be set
globally via: \code{options(numformdigits = n)} where n is the number of
digits beyond the decimal point to include.}

\item{fixed.relative}{The position of the element to be used for comparison.
Default is the first element.}

\item{\ldots}{Other arguments passed to \code{\link[numform]{f_prop2percent}}.}
}
\value{
Returns a string of publication ready relative percent differences.
}
\description{
\code{fv_percent_lead} - Convert a vector of values to percent relative to
prior value in the vector (i.e., T2/T1).
}
\examples{
set.seed(10)
x <- sample(1:10)

data.frame(
    original = x,
    perc_change = fv_percent_lead(x)
)

\dontrun{
library(dplyr)

CO2 \%>\%
    group_by(Plant) \%>\%
    mutate(
        `Percent` = fv_percent(conc),
        `Percent Diff` = fv_percent_diff(conc),
        `Percent Relative` = fv_percent_lead(conc)
    ) \%>\%
    print(n=Inf)

CO2 \%>\%
    group_by(Type, Treatment) \%>\%
    mutate(
        `Percent` = fv_percent(conc),
        `Percent Diff` = fv_percent_diff(conc),
        `Percent Relative` = fv_percent_lead(conc)
    ) \%>\%
    print(n=Inf)
}
}
