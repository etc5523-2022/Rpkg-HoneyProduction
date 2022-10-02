#' The Average Value of Every State
#'
#' @description
#' This is a function that can calculate the average honey value
#' that created by every state in US.
#'
#' @param input_state character. Every state of US from HoneyProduction dataset.
#'
#' @return A tibble of dataset that contained the state name and mean honey value of that state.
#'
#' @examples
#' ave_value("AL")
#' ave_value(input_state = "AL")
#'
#' @importFrom dplyr group_by summarise arrange filter desc
#' @importFrom tibble tibble
#'
#' @export

ave_value <- function(input_state){

  state <- prodvalue <- ave_value_dollar <- NULL
  HoneyProduction <- honeyproduction::HoneyProduction

  value <- HoneyProduction %>%
    group_by(state) %>%
    summarise(ave_value_dollar = mean(prodvalue)) %>%
    arrange(desc(ave_value_dollar)) %>%
    filter(state == input_state) %>%
    tibble()

  return(value)
}
