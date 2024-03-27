#' @title Create Standard Plots
#'
#' @description This function adorns your ggplot to convert it into a MN style plot. The default font is Inconsolata
#' @param font_title font family for titles, defaults to Inconsolata
#' @param font_subtitle font family for subtitles, defaults to Inconsolata
#' @param font_plot font family for the plot space, defaults to Inconsolata
#' @param font_caption font family for captions, defaults to Inconsolata
#' @param facet_space controls how far apart facets are from each other
#' @param text_scale scalar that will grow/shrink all text defined within
#' @param FO make everything black (why, who knows)
#' @param ... pass any parameters from theme that are not already defined within
#'
#' @export
#' @importFrom magrittr %>%
#' @importFrom ggplot2 %+replace% aes geom_point theme_minimal theme rel
#'
#' @examples
#' \dontrun{
#' library(systemfonts)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + mn_style()
#'   }


mn_style <- function(font_title,
                     font_subtitle,
                     font_plot,
                     font_caption,
                     facet_space = 2,
                     base_size = 10,
                     FO = FALSE,
                     dark_gridline = FALSE,
                     ...) {

  if (!isNamespaceLoaded("systemfonts"))
    cli::cli_alert_warning("The {.pkg systemfonts} package is not loaded. Run {.code library(systemfonts)}")

  if (isNamespaceLoaded("extrafont"))
    cli::cli_alert_warning("The {.pkg extrafont} package is loaded. Remove this library and restart your session as it conflicts with {.pkg systemfonts}")

  if (is.null(getOption('mnplotr_font')))
    choose_font()

  mnplotr_font_default <- getOption('mnplotr_font')

  if (missing(font_title))
    font_title <- mnplotr_font_default
  if (missing(font_subtitle))
    font_subtitle <- mnplotr_font_default
  if (missing(font_plot))
    font_plot <- mnplotr_font_default
  if (missing(font_caption))
    font_caption <- mnplotr_font_default

  half_line <- 2.5

  if (FO == TRUE) {
    # Use only black colours b/c grey colour non grey
    colour_title <- "#000000"
    colour_plot_text <- "#000000"
    colour_subtitle <- "#000000"
    colour_caption <- "#000000"
  }

  if (dark_gridline == TRUE) {
    colour_gridline <- dark_colour_gridline
  }

  # build off of theme_minimal settings
  ggplot2::theme_minimal() %+replace%

    ggplot2::theme(
      text = element_text(
        colour = colour_plot_text,
        size = base_size,
        ),

      #This sets the font, size, type and colour of text for the chart's title, as well as setting a margin between the title and the subtitle
      plot.title = ggplot2::element_text(
        family = font_title,
        size = rel(1.4),
        face = "bold",
        colour = colour_title,
        margin = ggplot2::margin(b = half_line),
        hjust = 0
        ),
      #This sets the font, size, type and colour of text for the chart's subtitle, as well as setting a margin between the title and the subtitle
      plot.subtitle = ggplot2::element_text(
        family = font_subtitle,
        size = rel(1.2),
        colour = colour_subtitle,
        margin = ggplot2::margin(t = half_line, b = half_line * 2),
        hjust = 0
        ),
      #This sets the font, size, type and colour of text for the chart's caption, as well as setting a margin between the subtitle and the caption
      plot.caption = ggplot2::element_text(
        family = font_caption,
        size = rel(0.9),
        colour = colour_caption,
        margin = ggplot2::margin(t = half_line),
        hjust = 1,
        vjust = 1
        ),
      plot.margin = ggplot2::margin(15, 15, 10, 15), #top, right, bottom, left
      plot.title.position = "plot", #Move plot.title to the left
      plot.caption.position = "plot",

      #Legend format
      # Set the legend to be at the top left of the graphic, below title
      # The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
      legend.position = "top",
      legend.text.align = 0,
      #legend.justification = c(0, 0),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.title = ggplot2::element_text(
        family = font_title,
        size = base_size,
        colour = colour_plot_text
        ),
      legend.text = ggplot2::element_text(
        family = font_title,
        size = base_size,
        colour = colour_plot_text
        ),

      #Axis format
      axis.text = ggplot2::element_text(
        family = font_plot,
        size = base_size,
        colour = colour_plot_text
        ),
      axis.ticks = ggplot2::element_blank(),
      axis.line = ggplot2::element_blank(),
      axis.title = ggplot2::element_text(
        family = font_plot,
        size = base_size,
        colour = colour_plot_text
        ),

      #Grid lines
      #This removes all minor gridlines and adds major x and y gridlines.
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(colour = colour_gridline, linewidth = 0.25),
      panel.grid.major.x = ggplot2::element_line(colour = colour_gridline, linewidth = 0.25),

      #Blank background
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      panel.spacing = ggplot2::unit(facet_space, "lines"),

      # Plot fill and margins
      plot.background = ggplot2::element_rect(fill = "#fafafc", colour = NA),


      #Strip background
      #This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour
      strip.background = ggplot2::element_rect(fill = "#fafafc", linetype = "blank"),
      strip.text = ggplot2::element_text(
        family = font_title,
        size  = rel(1.2),
        hjust = 0,
        colour = colour_plot_text,
        margin = ggplot2::margin(0.8 * half_line, 0.8 * half_line, 0.8 * half_line, 0.8 * half_line)
      ),
      ...
    )
}
