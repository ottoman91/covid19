
# covid19

<!-- badges: start -->
<!-- badges: end -->

The covid19 package provides data in tidy format from the Johns Hopkins COVID19 Dashboard for the Novel Coronavirus Epidemic(COVID-19). The data is pulled daily from the Johns Hopkins University Centre for Systems Science and Engineering [repository](https://github.com/CSSEGISandData/COVID-19)

## Installation

You can install the latest version of the package from Github as follows(package is updated daily):

``` r
#install.packages("devtools")
devtools::install_github("ottoman91/covid19")
```

## Data Set

The following is a description of the variables in the covid19 dataset

| Variable        | Definition      
| ------------- | ------------- | 
| `country_region`      | Name of Country | 
| `province_state`| Name of province/state, if available | 
| `date` | date at which the number of cases was recorded |
| `lat` | latitude of the location where the data was recorded |
| `long` | longitude of the location where the data was recorded |
| `cases` | number of cases recorded on specific date |
| `status` | determines whether the cases were for confirmed, recovered, or death |


## Data Sources

The raw data was pulled and compiled by the Johns Hopkins University Center for Systems Science and Engineering (JHU CCSE) from the following :

* World Health Organization (WHO): https://www.who.int/ <br>
* DXY.cn. Pneumonia. 2020. http://3g.dxy.cn/newh5/view/pneumonia.  <br>
* BNO News: https://bnonews.com/index.php/2020/02/the-latest-coronavirus-cases/  <br>
* National Health Commission of the People’s Republic of China (NHC): http&#58;://www.nhc.gov.cn/xcs/yqtb/list_gzbd.shtml
* China CDC (CCDC): http&#58;://weekly.chinacdc.cn/news/TrackingtheEpidemic.htm <br>
* Hong Kong Department of Health: https://www.chp.gov.hk/en/features/102465.html <br>
* Macau Government: https://www.ssm.gov.mo/portal/ <br>
* Taiwan CDC: https://sites.google.com/cdc.gov.tw/2019ncov/taiwan?authuser=0 <br>
* US CDC: https://www.cdc.gov/coronavirus/2019-ncov/index.html <br>
* Government of Canada: https://www.canada.ca/en/public-health/services/diseases/coronavirus.html <br>
* Australia Government Department of Health: https://www.health.gov.au/news/coronavirus-update-at-a-glance <br>
* European Centre for Disease Prevention and Control (ECDC): https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases <br>


## Acknowledgements

This is my first R package, so apologies in advance for any mistakes. The following sources were valuable while I was figuring out how to create this package. 

- [Rami Krispin](https://github.com/RamiKrispin/coronavirus) and his coronavirus data package. 

- This [talk](https://resources.rstudio.com/packages/you-can-make-a-package-in-20-minutes-jim-hester) by Jim Hester on creating your own R package 

- The Package Development Cheat [Sheet](https://rstudio.com/wp-content/uploads/2015/06/devtools-cheatsheet.pdf) from RStudio 


