#' @importFrom magrittr %>%
#' @importFrom readr read_csv
#' @importFrom dplyr rename mutate select arrange
#' @importFrom tidyr pivot_longer
#' @importFrom lubridate mdy
#' @importFrom here here



url_recovered <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.csv"

url_deaths <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv"

url_confirmed <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv"

covid19_data <- here::here("data/covid19.rda")

covid_confirmed <-
  url_confirmed %>%
  read_csv() %>%
  rename(
    province_state = `Province/State`,
    country_region = `Country/Region`,
    lat = Lat,
    long = Long
  ) %>%
  pivot_longer(
    cols = -c(province_state, country_region, lat, long),
    names_to = "date",
    values_to = "cases"
  ) %>%
  mutate(
    date = mdy(date),
    status = "confirmed"
  ) %>%
  select(
    country_region,
    province_state,
    date,
    lat,
    long,
    cases,
    status
  )

covid_recovered <-
  url_recovered %>%
  read_csv() %>%
  rename(
    province_state = `Province/State`,
    country_region = `Country/Region`,
    lat = Lat,
    long = Long
  ) %>%
  pivot_longer(
    cols = -c(province_state, country_region, lat, long),
    names_to = "date",
    values_to = "cases"
  ) %>%
  mutate(
    date = mdy(date),
    status = "recovered"
  ) %>%
  select(
    country_region,
    province_state,
    date,
    lat,
    long,
    cases,
    status
  )

covid_deaths <-
  url_deaths %>%
  read_csv() %>%
  rename(
    province_state = `Province/State`,
    country_region = `Country/Region`,
    lat = Lat,
    long = Long
  ) %>%
  pivot_longer(
    cols = -c(province_state, country_region, lat, long),
    names_to = "date",
    values_to = "cases"
  ) %>%
  mutate(
    date = mdy(date),
    status = "dead"
  ) %>%
  select(
    country_region,
    province_state,
    date,
    lat,
    long,
    cases,
    status
  )

#' This tidy tibble contains the data in tidy format for the number of confirmed, recovered and dead cases
covid19 <-
  rbind(covid_confirmed, covid_recovered, covid_deaths) %>%
  arrange(country_region, province_state, date)

#' This call saves the data
save(covid19, file = covid19_data)
