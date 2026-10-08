#' Chooses palette to use with ggplot2
#'
#' @description
#' Generate a palette by linear interpolation.
#' If a discrete palette is selected, colours are recycled to the length of the desired vector.
#'
#'
#' @title Palette interpolation
#'
#' @param pal_name name of the palette
#' @param n number of interpolation points
#' @param reverse if true, reverses order
#' @param alpha sets transparency of each colour
#'
#' @export
#'
#' @importFrom grDevices colorRampPalette
#' @importFrom scales show_col
#' @importFrom scales alpha
#'
#' @return A character vector of hex colour codes of length \code{n}.
#'
#' @examples
#' \dontrun{
#' # View a sequential palette
#' mn_rampr("hex_blue_seq") %>% scales::show_col()
#' mn_rampr("hex_blue_seq", n = 10) %>% scales::show_col()
#' # View a diverging palette at full interpolation
#' mn_rampr("div_hblue_red", n = 100) %>% scales::show_col(labels = FALSE)
#'}


mn_rampr <- function(pal_name = "hex_blue", n, alpha = 1, reverse = FALSE) {

  if (!missing(n) && (!is.numeric(n) || n < 1))
    stop("n must be a positive integer, not ", n)

  if (!is.numeric(alpha) || alpha < 0 || alpha > 1)
    stop("alpha must be a number between 0 and 1, not ", alpha)

  pal <- mn_palettes[[pal_name]]

  if (is.null(pal))
    stop("Invalid palette: '", pal_name, "'. Available palettes: ",
         paste(names(mn_palettes), collapse = ", "))
  
  if (missing(n)) {
    n <- length(pal)
  }
  
  # Do this when you pick a discrete colour
  if (pal_name %in% mn_categorical_palettes) {
    
    if (n > length(pal)) {
      usethis::ui_warn("You selected a discrete palette for {n} colours. {usethis::ui_code('mn_rampr()')} will only return n = {length(pal)} distinct colours. Some colours may be recycled.")
    }
    
    pal <- rep(pal, length.out = n)
    pal <- scales::alpha(pal, alpha = alpha)
  }
  
  else {
    pal <- colorRampPalette(pal)(n)
    pal <- scales::alpha(pal, alpha = alpha)
  }
  
  if (reverse) {
    pal <- rev(pal)
  }
  
  return(pal)
}


#' mn palette with ramped colours
#' @description Helper function to incorporate mn colours into scale fills
#'
#' @param palette Choose from 'mn_palettes' list
#' @param reverse if true, reverses the order of palette
#' @param alpha sets transparency of each colour
#' @importFrom grDevices colorRampPalette
#'

mn_pal <- function(palette = "hex_blue", alpha = 1, reverse = FALSE) {
  
  function(n) {
    mn_rampr(palette, n, alpha, reverse)
  }
  
}


#' mn colour scales for ggplot2
#' @title scale_colour_mn
#' @description MN colours available through scale_colour_mn
#'
#' @param palette Choose from 'mn_palettes' list
#' @param reverse if true, reverses the order of palette
#' @param discrete whether to use a discrete colour palette
#' @param alpha sets transparency of each colour
#' @param ... additional arguments to pass to scale_colour_gradientn
#'
#' @inheritParams viridis::scale_colour_viridis
#'
#' @return A ggplot2 colour scale object (discrete or continuous).
#'
#' @importFrom ggplot2 scale_colour_manual discrete_scale scale_colour_gradientn
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(mnplotr)
#'
#' # Discrete colour scale
#' ggplot(diamonds) +
#' geom_point(aes(x = carat, y = price, colour = cut)) +
#' scale_colour_mn("hex_blue", discrete = TRUE)
#'
#' # Continuous colour scale
#' ggplot(diamonds) +
#' geom_point(aes(x = carat, y = price, colour = price)) +
#' scale_colour_mn("hex_blue_seq")}
#'

scale_colour_mn <- function(palette = "hex_blue_seq", alpha = 1, discrete = FALSE, reverse = FALSE, ...) {
  
  if (discrete == TRUE) {
    discrete_scale("colour", "mn_rampr", mn_pal(palette, alpha = alpha, reverse = reverse), ...)
  }
  else {
    scale_colour_gradientn(colours = mn_rampr(palette, 256, alpha = alpha, reverse = reverse), ...)
  }
}


#' @export
scale_color_mn <- scale_colour_mn


#' @title MN colours for the scale_fill_ option
#' @description MN colours available through scale_fill_mn
#'
#'
#' @param palette Choose from 'mn_palettes' list
#' @param alpha sets transparency of each colour
#' @param reverse if TRUE, reverses order of palette
#' @param discrete whether to use a discrete colour palette
#' @param ... additional arguments to pass to scale_colour_gradientn
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams mn_pal
#'
#' @return A ggplot2 fill scale object (discrete or continuous).
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(mnplotr)
#'
#' # Discrete fill scale
#' ggplot(diamonds) +
#'   geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_mn("hex_blue", discrete = TRUE)
#'
#' # Continuous fill scale (e.g. choropleth map)
#' rnaturalearth::ne_countries(continent = "africa", returnclass = "sf") %>%
#'  tibble::add_column(runif = runif(nrow(.))) %>%
#'  ggplot() +
#'  geom_sf(aes(fill = runif), colour = "white", size = 0.25) +
#'  scale_fill_mn("penn_red_seq", reverse = TRUE) +
#'  mn_style_void()
#'  }

scale_fill_mn <- function(palette = "hex_blue_seq", alpha = 1, discrete = FALSE, reverse = FALSE, ...) {
  
  if (discrete == TRUE) {
    discrete_scale("fill", "mn_rampr", mn_pal(palette, alpha = alpha, reverse = reverse), ...)
  }
  else {
    scale_fill_gradientn(colours = mn_rampr(palette, 256, alpha = alpha, reverse = reverse), ...)
  }
}


