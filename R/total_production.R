#' Summary of Total Honey Production of US States(1998-2012)
#'
#' @description
#' The function is used for showing the summary information of
#' total production of US in the period of 1998 to 2012.
#'
#' @param input_year integer. Includes all years from 1998 to 2012.
#'
#' @return A dataframe containing summary values (i.e. minimum, Q1, median, Q3, maximum)
#' of the total production for the selected year.
#'
#' @examples
#' yearly_production(2000)
#' yearly_production(input_year = 2000)
#'
#' @importFrom dplyr arrange select filter desc
#' @importFrom tibble tibble
#'
#' @export
yearly_production <- function(input_year){

  year <- totalprod <- NULL
  HoneyProduction <- honeyproduction::HoneyProduction

  yearly_prod <- HoneyProduction %>%
    arrange(desc(totalprod)) %>%
    filter(year == input_year) %>%
    select(totalprod)

  prod_summary <- summary(yearly_prod) %>%
    tibble()

  return(prod_summary)
}






