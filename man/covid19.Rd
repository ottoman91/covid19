% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R, R/save_data.R
\docType{data}
\name{covid19}
\alias{covid19}
\title{Number of Confirmed, Recovered and Deaths by COVID19 in each country}
\format{
A tibble with 89127 rows and 7 variables:
\describe{
  \item{country_region}{name of country}
  \item{province_state}{name of the province/state, if available}
  \item{date}{date at which the number of cases was recorded}
  \item{lat}{latitude of the location where the data was recorded}
  \item{long}{longitude of the location where the data was recorded}
  \item{cases}{number of cases recorded on specific date}
  \item{status}{determines whether the cases were for confirmed, recovered, or death}
}

An object of class \code{tbl_df} (inherits from \code{tbl}, \code{data.frame}) with 93186 rows and 7 columns.
}
\source{
\url{https://systems.jhu.edu/research/public-health/ncov/}
}
\usage{
covid19

covid19
}
\description{
A dataset containing the number of confirmed, recovered and
dead COVID-19 cases in each country. Data is taken from the John's
Hopkins University's Coronavirus Dashboard
}
\keyword{datasets}
