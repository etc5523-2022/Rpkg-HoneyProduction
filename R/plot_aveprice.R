#' Plotting Average Price of Every State
#'
#' @description
#' This function takes a `state' object to plot the average price histogram for the input state,
#' and this value can be easily found from the graph by highlighting the selected state.
#'
#' @param state_name character. Every state of US from HoneyProduction dataset.
#'
#'
#' @return A bar chart showing the average price of honey in each state,
#' with selected states highlighted and others grayed out,
#' meanwhile each state's price data displayed on its own bar.
#'
#' @examples
#' price_plot("AL")
#' price_plot(state_name = "AL")
#'
#' @import ggplot2
#' @importFrom dplyr group_by summarise filter
#' @importFrom plotly ggplotly
#'
#'
#' @export
price_plot <- function(state_name) {

  state <- priceperlb <- ave_price <- NULL
  HoneyProduction <- honeyproduction::HoneyProduction

  price <- HoneyProduction %>%
    group_by(state) %>%
    summarise(ave_price = mean(priceperlb))

  p <- price %>%
    ggplot(aes(
      x = state,
      y = ave_price,
      fill = ifelse(state == state_name, "Chosen State", "Normal")
    )) +
    scale_fill_manual(name = "Status", values = c("yellow", "grey50")) +
    geom_col() +
    geom_text(aes(label = round(ave_price, digits = 3))) +
    theme_bw(base_size = 14) +
    theme(axis.text.x = element_text(angle = 45, hjust = 0.5, vjust = 0.5)) +
    labs(x = "State", y = "Average Price (dollar/pound)")
  ggplotly(p)
}
