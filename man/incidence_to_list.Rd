% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/incidence_to_list.R
\name{incidence_to_list}
\alias{incidence_to_list}
\title{Convert incidence matrix to a named list of sets}
\usage{
incidence_to_list(incidence)
}
\arguments{
\item{incidence}{incidence matrix with set names as rows and elements as
columns. Usually, the output of \code{\link{incidence}}.}
}
\value{
a named list of sets with the same length as \code{nrow(incidence)}.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

Converts an incidence matrix to a named list of character vectors. The
inverse of \code{\link{incidence}}.
}
\note{
This function does not currently check that the input is valid.
}
\examples{
x <- list("A" = c("a", "b", "c"),
          "B" = c("c", "d"),
          "C" = c("x", "y", "z", "z"), # duplicates
          "D" = c("a", NA)) # missing values

(mat <- incidence(x)) # incidence matrix

incidence_to_list(mat)
}
