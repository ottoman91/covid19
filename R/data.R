#' Number of Confirmed, Recovered and Deaths by COVID19 in each country
#'
#' A dataset containing the number of confirmed, recovered and
#' dead COVID-19 cases in each country. Data is taken from the John's
#' Hopkins University's Coronavirus Dashboard
#'
#' @format A tibble with 89127 rows and 7 variables:
#' \describe{
#'   \item{country_region}{name of country}
#'   \item{province_state}{name of the province/state, if available}
#'   \item{date}{date at which the number of cases was recorded}
#'   \item{lat}{latitude of the location where the data was recorded}
#'   \item{long}{longitude of the location where the data was recorded}
#'   \item{cases}{number of cases recorded on specific date}
#'   \item{status}{determines whether the cases were for confirmed, recovered, or death}
#' }
#' @source \url{https://systems.jhu.edu/research/public-health/ncov/}
"covid19"
