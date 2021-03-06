% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_digits.R
\name{time_digits}
\alias{time_digits}
\title{Compute Digits Needed for Quarter Hour Time Vector}
\usage{
time_digits(x, ...)
}
\arguments{
\item{x}{A numeric vector of times rounded tot he nearest quarter hour.}

\item{\ldots}{ignored}
}
\value{
Returns integer 0-2
}
\description{
This tool computes the minimum number of digits required for a vector of times.
The defaults of the tool assumes your time is rounded to within the quarter
hour.
}
\examples{
time_digits(c(.5, .25, 6))
time_digits(c(.5, 3.5, 6))
time_digits(c(5, 25, 6))

x <- c(.5, .25, 6)
numform::f_pad_left(numform::f_num(x, digits = numform::time_digits(x)))

lapply(
    list(quarter = c(.5, .25, 6), half = c(.5, 3.5, 6), hour = c(5, 25, 6)),
    function(x) {numform::f_pad_left(numform::f_num(x, digits = numform::time_digits(x)))}
)
}
