#' Honey Production Shiny Application
#'
#' @description
#'
#' The app uses an interactive component that allows users to self-select a year
#' or state to see the impact of different choices on yield or average unit price.
#' It also presents the top six states with the highest yields to the user through a data visualization.
#'
#' @return A shiny app. By selecting different years, interactively showing the changing trend of honey production in every state of USA during 1998 to 2012. Showing the mean value of honey price per pound of states, and visualizing the top 6 states with highest value of honey of the data.
#'
#' @export
run_app <- function() {
  app_dir <- system.file("myshinyapp", package = "honeyproduction")
  shiny::runApp(app_dir, display.mode = "normal")
}
