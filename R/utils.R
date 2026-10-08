.onLoad <- function (libname, pkgname)
{
  check_fonts()
  
  choose_font()
  
  invisible()
}


#' Check if font exists
#'
#' @param font typeface to check, defaults to Inconsolata and Lato
#'
#' @keywords internal

font_exists <- function(font = c("Inconsolata", "Lato")){
  #list of all fonts available
  localfonts <- unique(systemfonts::system_fonts()$family)
  #check if any of the fonts exists
  any(font %in% localfonts)
}

#' Check for Imported Fonts
#'
#' @keywords internal

check_fonts <- function(){
  
  #list of all fonts available
  localfonts <- unique(systemfonts::system_fonts()$family)
  
  #check if font (Inconsolata) is installed
  if (!font_exists())
    cli::cli_alert_warning("Before proceeding, we recommend installing {.strong Inconsolata} or {.strong Lato} from {.href [Google Fonts](https://fonts.google.com)}. In the absence of these fonts, the default will be {.strong sans}.")
  
}


#' Check for Imported Fonts
#'
#' @keywords internal
#'
choose_font <- function(){
  
  ss_fonts <- c("Inconsolata", "Lato", "sans")
  localfonts <- unique(systemfonts::system_fonts()$family)
  preferred_font <- localfonts[localfonts %in% ss_fonts]
  preferred_font <- factor(preferred_font, ss_fonts) %>% sort() %>% as.character()
  preferred_font <- preferred_font[1]

  # Fallback: "sans" is a generic R font family that is always available,
  # but may not appear in systemfonts listings. Guarantee a non-NA value.
  if (is.na(preferred_font)) preferred_font <- "sans"

  options(mnplotr_font = preferred_font)
  
}