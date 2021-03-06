% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f_pval.R
\name{f_pval}
\alias{f_pval}
\alias{ff_pval}
\title{Format P-Values}
\usage{
f_pval(
  x,
  alpha = getOption("numformalpha"),
  digits = getOption("numformdigits"),
  ...
)

ff_pval(...)
}
\arguments{
\item{x}{A p-value.}

\item{alpha}{The alpha cut off to use.  Defaults to .05.  Can be set
globally via: \code{options(numformalpha = n)} where n is the alpha level.}

\item{digits}{The number of digits to use.  Defaults to 3.  Can be set
globally via: \code{options(numformdigits = n)} where n is the number of
digits beyond the decimal point to include.}

\item{\ldots}{Other values passed to \code{\link[numform]{f_num}}.}
}
\value{
Returns a string of publication ready p-values.
}
\description{
Format p-values for reporting using a < or = sign if greater than alpha level.
}
\examples{
f_pval(.05)
f_pval(.04999999999999999)
f_pval(.0002)
f_pval(.0002, .001)

mod1 <- t.test(1:10, y = c(7:20))
f_pval(mod1$p.value)

mod2 <- t.test(1:10, y = c(7:20, 200))
f_pval(mod2$p.value)
}
\seealso{
\code{\link[numform]{f_num}}
}
