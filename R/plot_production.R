#' Plotting Total Production Trend From 1998 to 2012
#'
#'
#' @description
#' A line graph showing total honey production trend by states in the US over time,
#' which is a big picture of the honey production data.
#'
#' The output is the line graph of the honey production value for all states,
#' regardless of whether argument has an input or not.
#'
#' @param allstates character. Every state of US from HoneyProduction dataset.
#'
#' @return A line graph containing the curve of the change
#' in the total honey production of each state from 1998 to 2012.
#'
#' @examples
#' production_plot()
#' production_plot(allstates = )
#'
#' @import ggplot2
#' @importFrom dplyr group_by summarise filter
#' @importFrom plotly ggplotly
#'
#'
#' @export



production_plot <- function(allstates){

  state <- year <- numcol <- yieldpercol <- totalprod <- priceperlb <- prodvalue <- NULL
  HoneyProduction <- honeyproduction::HoneyProduction

  production <- HoneyProduction %>%
    ggplot(aes(
      x = year,
      y = totalprod,
      color = state
    )
    ) +
    geom_line() +
    theme_bw(base_size = 14) +
    scale_x_continuous(
      breaks = c(
        1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
        2006, 2007, 2008, 2009, 2010, 2011, 2012
      )
    ) +
    theme(axis.text.x = element_text(angle = 45, hjust = 0.5, vjust = 0.5)) +
    labs(x = "Year", y = "Production(pound)")

  ggplotly(production)
}
