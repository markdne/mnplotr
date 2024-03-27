#' MN legend for fill aesthetics
#'
#' @description `r lifecycle::badge('experimental')`
#' Function attempts to create a well
#' formatted colour-based legend to adorn an existing plot.
#'
#' @details
#' This helper function compliments the various [mn_style()] themes.
#' The main action is to move a fill-based legend to the top left
#' of the plot and stretch the legend. The same action can be done
#' using the [ggplot2::guides()] function.
#'
#'
#' @export
#' @examples
#' \dontrun{
#' library(systemfonts)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, fill = Sepal.Width)) +
#' geom_point(shape = 21, size = 4) + mn_legend_fill() + mn_style()
#'}
#'

mn_legend_fill <- function() {
  ggplot2::guides(
    fill = ggplot2::guide_colourbar(
      barheight = unit(4, units = "mm"),
      barwidth = unit(90, units = "mm"),
      direction = "horizontal",
      ticks.colour = "white",
      title.position = "top",
      title.hjust = 0
    )
  )
}

#' SI legend for colour aesthetics
#'
#' @description `r lifecycle::badge('experimental')`
#' Function attempts to create a well
#' formatted colour-based legend to adorn an existing plot.
#'
#' @details
#' This helper function compliments the various [mn_style()] themes.
#' The main action is to move a fill-based legend to the top left
#' of the plot and stretch the legend. The same action can be done
#' using the [ggplot2::guides()] function.
#'
#' @export
#' @examples
#' \dontrun{
#' library(systemfonts)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Sepal.Width)) +
#' geom_point(size = 4) + mn_legend_colour() + mn_style()
#'}
#'
mn_legend_colour <- function() {
  ggplot2::guides(
    colour = ggplot2::guide_colourbar(
      barheight = unit(4, units = "mm"),
      barwidth = unit(90, units = "mm"),
      direction = "horizontal",
      ticks.colour = "white",
      title.position = "top",
      title.hjust = 0
    )
  )
}