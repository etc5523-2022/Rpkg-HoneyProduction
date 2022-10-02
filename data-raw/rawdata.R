## code to prepare `rawdata` dataset goes here

HoneyProduction <- read.csv("https://raw.githubusercontent.com/yche0537/Honey_production_data/main/data/honeyproduction.csv")

HoneyProduction <- HoneyProduction %>%
  drop_na() %>%
  select(state,
         year,
         numcol,
         yieldpercol,
         totalprod,
         priceperlb,
         prodvalue)

usethis::use_data(HoneyProduction, overwrite = TRUE)

