
#### Data

This data set shows honey production, 
honey unit price, and other data for each state 
in the United States from 1998 to 2012.
The data source is from 
National Agricultural Statistics Service (NASS), 
Agricultural Statistics Board, U.S. Department of Agriculture (data link:https://github.com/rfordatascience/tidytuesday/tree/master/data/2018/2018-05-21).


#### Purpose

The purpose of the app is to:

1. by selecting different years, interactively show the changing trend of honey production in every state of USA during 1998 to 2012,
2. show the mean value of honey price per pound of states, and 
3. visualize the top 6 states with highest value of honey of the data. 

The app uses an interactive component that allows users to self-select a year or state to see the impact of different choices on yield or average unit price. The third graph presents the top six states with the highest yields to the user through a data visualization.

#### Creator

Yunzhi Chen (yche0537@student.monash.edu)

<details>
<summary>Session information</summary>

```
## - Session info ----------------------------------------------------------------------------------------------------------
##  setting  value
##  version  R version 4.1.2 (2021-11-01)
##  os       Windows 10 x64 (build 22000)
##  system   x86_64, mingw32
##  ui       RStudio
##  language (EN)
##  collate  English_Australia.1252
##  ctype    English_Australia.1252
##  tz       Australia/Sydney
##  date     2022-10-02
##  rstudio  2022.07.0+548 Spotted Wakerobin (desktop)
##  pandoc   2.18 @ C:/Program Files/RStudio/bin/quarto/bin/tools/ (via rmarkdown)
## 
## - Packages --------------------------------------------------------------------------------------------------------------
##  ! package         * version    date (UTC) lib source
##    assertthat        0.2.1      2019-03-21 [1] CRAN (R 4.1.2)
##    backports         1.4.1      2021-12-13 [1] CRAN (R 4.1.2)
##    brio              1.1.3      2021-11-30 [1] CRAN (R 4.1.3)
##    broom             0.8.0      2022-04-13 [1] CRAN (R 4.1.3)
##    bslib             0.4.0      2022-07-16 [1] CRAN (R 4.1.3)
##    cachem            1.0.6      2021-08-19 [1] CRAN (R 4.1.3)
##    callr             3.7.1      2022-07-13 [1] CRAN (R 4.1.3)
##    cellranger        1.1.0      2016-07-27 [1] CRAN (R 4.1.2)
##    cli               3.4.0      2022-09-08 [1] CRAN (R 4.1.3)
##    colorspace        2.0-3      2022-02-21 [1] CRAN (R 4.1.2)
##    crayon            1.5.2      2022-09-29 [1] CRAN (R 4.1.2)
##    crosstalk         1.2.0      2021-11-04 [1] CRAN (R 4.1.3)
##    data.table        1.14.2     2021-09-27 [1] CRAN (R 4.1.2)
##    DBI               1.1.3      2022-06-18 [1] CRAN (R 4.1.3)
##    dbplyr            2.1.1      2021-04-06 [1] CRAN (R 4.1.2)
##    desc              1.4.1      2022-03-06 [1] CRAN (R 4.1.3)
##    devtools          2.4.4      2022-07-20 [1] CRAN (R 4.1.3)
##    digest            0.6.29     2021-12-01 [1] CRAN (R 4.1.2)
##    dplyr           * 1.0.9      2022-04-28 [1] CRAN (R 4.1.3)
##    DT              * 0.24       2022-08-09 [1] CRAN (R 4.1.3)
##    ellipsis          0.3.2      2021-04-29 [1] CRAN (R 4.1.2)
##    evaluate          0.15       2022-02-18 [1] CRAN (R 4.1.2)
##    fansi             1.0.3      2022-03-24 [1] CRAN (R 4.1.3)
##    farver            2.1.1      2022-07-06 [1] CRAN (R 4.1.3)
##    fastmap           1.1.0      2021-01-25 [1] CRAN (R 4.1.2)
##    forcats         * 0.5.1      2021-01-27 [1] CRAN (R 4.1.3)
##    fs                1.5.2      2021-12-08 [1] CRAN (R 4.1.2)
##    gargle            1.2.0      2021-07-02 [1] CRAN (R 4.1.2)
##    generics          0.1.3      2022-07-05 [1] CRAN (R 4.1.3)
##    ggplot2         * 3.3.6      2022-05-03 [1] CRAN (R 4.1.3)
##    glue              1.6.2      2022-02-24 [1] CRAN (R 4.1.2)
##    googledrive       2.0.0      2021-07-08 [1] CRAN (R 4.1.2)
##    googlesheets4     1.0.0      2021-07-21 [1] CRAN (R 4.1.2)
##    gtable            0.3.1      2022-09-01 [1] CRAN (R 4.1.3)
##    haven             2.4.3      2021-08-04 [1] CRAN (R 4.1.2)
##    hms               1.1.1      2021-09-26 [1] CRAN (R 4.1.2)
##  P honeyproduction * 0.0.0.9000 2022-10-01 [?] load_all()
##    htmltools         0.5.2      2021-08-25 [1] CRAN (R 4.1.2)
##    htmlwidgets       1.5.4      2021-09-08 [1] CRAN (R 4.1.3)
##    httpuv            1.6.5      2022-01-05 [1] CRAN (R 4.1.3)
##    httr              1.4.3      2022-05-04 [1] CRAN (R 4.1.3)
##    jquerylib         0.1.4      2021-04-26 [1] CRAN (R 4.1.2)
##    jsonlite          1.8.0      2022-02-22 [1] CRAN (R 4.1.2)
##    kableExtra        1.3.4      2021-02-20 [1] CRAN (R 4.1.3)
##    knitr             1.37       2021-12-16 [1] CRAN (R 4.1.2)
##    labeling          0.4.2      2020-10-20 [1] CRAN (R 4.1.1)
##    later             1.3.0      2021-08-18 [1] CRAN (R 4.1.3)
##    lazyeval          0.2.2      2019-03-15 [1] CRAN (R 4.1.3)
##    lifecycle         1.0.2      2022-09-09 [1] CRAN (R 4.1.3)
##    lubridate         1.8.0      2021-10-07 [1] CRAN (R 4.1.3)
##    magrittr          2.0.3      2022-03-30 [1] CRAN (R 4.1.3)
##    markdown          1.1        2019-08-07 [1] CRAN (R 4.1.2)
##    memoise           2.0.1      2021-11-26 [1] CRAN (R 4.1.3)
##    mime              0.12       2021-09-28 [1] CRAN (R 4.1.1)
##    miniUI            0.1.1.1    2018-05-18 [1] CRAN (R 4.1.2)
##    modelr            0.1.8      2020-05-19 [1] CRAN (R 4.1.2)
##    munsell           0.5.0      2018-06-12 [1] CRAN (R 4.1.2)
##    pillar            1.8.1      2022-08-19 [1] CRAN (R 4.1.3)
##    pkgbuild          1.3.1      2021-12-20 [1] CRAN (R 4.1.3)
##    pkgconfig         2.0.3      2019-09-22 [1] CRAN (R 4.1.2)
##    pkgload           1.3.0      2022-06-27 [1] CRAN (R 4.1.3)
##    plotly          * 4.10.0     2021-10-09 [1] CRAN (R 4.1.3)
##    prettyunits       1.1.1      2020-01-24 [1] CRAN (R 4.1.2)
##    processx          3.7.0      2022-07-07 [1] CRAN (R 4.1.3)
##    profvis           0.3.7      2020-11-02 [1] CRAN (R 4.1.3)
##    promises          1.2.0.1    2021-02-11 [1] CRAN (R 4.1.3)
##    ps                1.6.0      2021-02-28 [1] CRAN (R 4.1.2)
##    purrr           * 0.3.4      2020-04-17 [1] CRAN (R 4.1.2)
##    R6                2.5.1      2021-08-19 [1] CRAN (R 4.1.2)
##    Rcpp              1.0.9      2022-07-08 [1] CRAN (R 4.1.3)
##    readr           * 2.1.2      2022-01-30 [1] CRAN (R 4.1.3)
##    readxl            1.4.0      2022-03-28 [1] CRAN (R 4.1.3)
##    remotes           2.4.2      2021-11-30 [1] CRAN (R 4.1.3)
##    reprex            2.0.1      2021-08-05 [1] CRAN (R 4.1.3)
##    rlang             1.0.5      2022-08-31 [1] CRAN (R 4.1.3)
##    rmarkdown         2.14       2022-04-25 [1] CRAN (R 4.1.3)
##    rprojroot         2.0.2      2020-11-15 [1] CRAN (R 4.1.2)
##    rsconnect         0.8.27     2022-07-12 [1] CRAN (R 4.1.3)
##    rstudioapi        0.13       2020-11-12 [1] CRAN (R 4.1.2)
##    rvest             1.0.2      2021-10-16 [1] CRAN (R 4.1.2)
##    sass              0.4.2      2022-07-16 [1] CRAN (R 4.1.3)
##    scales            1.2.1      2022-08-20 [1] CRAN (R 4.1.3)
##    sessioninfo       1.2.2      2021-12-06 [1] CRAN (R 4.1.3)
##    shiny           * 1.7.2      2022-07-19 [1] CRAN (R 4.1.3)
##    stringi           1.7.6      2021-11-29 [1] CRAN (R 4.1.2)
##    stringr         * 1.4.0      2019-02-10 [1] CRAN (R 4.1.2)
##    svglite           2.1.0      2022-02-03 [1] CRAN (R 4.1.3)
##    systemfonts       1.0.4      2022-02-11 [1] CRAN (R 4.1.3)
##    testthat        * 3.1.4      2022-04-26 [1] CRAN (R 4.1.3)
##    tibble          * 3.1.8      2022-07-22 [1] CRAN (R 4.1.3)
##    tidyr           * 1.2.0      2022-02-01 [1] CRAN (R 4.1.2)
##    tidyselect        1.1.2      2022-02-21 [1] CRAN (R 4.1.2)
##    tidyverse       * 1.3.2      2022-07-18 [1] CRAN (R 4.1.3)
##    tzdb              0.3.0      2022-03-28 [1] CRAN (R 4.1.3)
##    urlchecker        1.0.1      2021-11-30 [1] CRAN (R 4.1.3)
##    usethis           2.1.6      2022-05-25 [1] CRAN (R 4.1.3)
##    utf8              1.2.2      2021-07-24 [1] CRAN (R 4.1.2)
##    vctrs             0.4.1      2022-04-13 [1] CRAN (R 4.1.3)
##    viridisLite       0.4.1      2022-08-22 [1] CRAN (R 4.1.3)
##    webshot           0.5.3      2022-04-14 [1] CRAN (R 4.1.3)
##    whisker           0.4        2019-08-28 [1] CRAN (R 4.1.3)
##    withr             2.5.0      2022-03-03 [1] CRAN (R 4.1.2)
##    xfun              0.30       2022-03-02 [1] CRAN (R 4.1.2)
##    xml2              1.3.3      2021-11-30 [1] CRAN (R 4.1.2)
##    xtable            1.8-4      2019-04-21 [1] CRAN (R 4.1.3)
##    yaml              2.3.5      2022-02-21 [1] CRAN (R 4.1.2)
## 
##  [1] C:/Users/Stella/Documents/R/win-library/4.1
##  [2] C:/Program Files/R/R-4.1.2/library
## 
##  P -- Loaded and on-disk path mismatch.
## 
## -------------------------------------------------------------------------------------------------------------------------
```
</details>
