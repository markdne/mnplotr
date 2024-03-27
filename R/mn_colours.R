#' @title List of MN Colour Palettes
#'
#' @description
#' Sets of colour palettes created similar to USAIDS Office of HIV/AIDs style guide (https://issuu.com/achafetz/docs/oha_styleguide#google_vignette).
#' Colours are stored as a named list. Use palette name or position to call in colours.
#'
#' Colour sets are stored as the name of the first colour.
#' Calling `mn_palettes$penn_red` will return the five colours where penn_red is the base.
#' Calling `mn_palettes$penn_reds` will return an interpolated ramp of 11 colours for penn_red.
#'
#' @importFrom scales show_col
#'
#' @export
#'
#' @seealso [mn_rampr] for details on creating interpolated palettes of varying lengths.
#'
#' @examples
#' \dontrun{
#' # List names of palettes available
#' names(mn_palettes)
#'
#' scales::show_col(mn_palettes$hex_main)
#' scales::show_col(mn_palettes$penn_red)
#'
#' # Show palettes interpolated
#' mn_rampr("div_hblue_red", n = 10) %>% scales::show_col(labels = T)
#' mn_rampr("div_hblue_red", n = 100) %>% scales::show_col(labels = FALSE)
#'}


mn_palettes <- list(
  ## Base colours
  hex_main = c("#145787", "#B52B22", "#8C74C2", "#DE7A49", "#1E95A2", "#EFBB41", "#3A7D65", "#808080"),
  
  ## Recommended categorical palettes
  hex_blue = c("#145787", "#BF3B33", "#1E95A2", "#DE7A49", "#EFBB41", "#8C74C2"),
  penn_red = c("#BF3B33", "#1E95A2", "#8C74C2", "#DE7A49", "#3A7D65"),
  byzantim = c("#8C74C2", "#3A7D65", "#145787", "#DE7A49", "#1E95A2"),
  ochre = c("#DE7A49", "#8C74C2", "#EFBB41", "#BF3B33", "#1E95A2"),
  air_force = c("#1E95A2", "#BF3B33", "#8C74C2", "#EFBB41", "#3A7D65"),
  hunyadi_yellow = c("#EFBB41", "#145787", "#3A7D65", "#DE7A49", "#8C74C2"),
  hunters_green = c("#3A7D65", "#8C74C2", "#EFBB41", "#DE7A49", "#1E95A2"),
  
  ## Sequential colour palettes - built from base colours
  hex_pairs = c(
    "#145787", "#83C0EC",
    #"#4588A3", "#94C8DE",
    "#1E95A2", "#94E3Eb",
    "#BF3B33", "#E8ADAA",
    "#EFBB41", "#F8E4B4", 
    "#3A7D65", "#A6D6C5",
    "#8C74C2", "#D1C8E7",
    "#DE7A49", "#F2CAB7",
    "#A53F2B", "#F2B1A4",
    "#CFCFCF", "#808080"
  ),
  
  hex_blue_seq = c(
    "#d6e4f7", "#b2c6e0", "#8fa9c9", "#6b8cb3", "#46719d", "#145787", "#144972", "#133b5d", "#112e49", "#0d2236", "#091624"
  ),
  
  air_force_blue_seq = c(
    "#c8e8ed", "#abd7de", "#8ec6cf", "#70b6c0", "#4ea5b1", "#1E95A2", "#177a85", "#116069", "#0b474e", "#062f35", "#001a1d"
  ),
  
  penn_red_seq = c(
    "#f9dcd7", "#f2bdb4", "#e89e92", "#c17568", "#cf5e51", "#BF3B33", "#9d332c", "#7c2a24", "#5d221d", "#3f1915", "#24100b"
  ),
  
  hunyadi_yellow_seq = c(
    "#eee1ce", "#f1d9b3", "#f3d198", "#f3ca7d", "#f1c260", "#EFBB41", "#c09635", "#937229", "#68501e", "#403113", "#1d1400"
  ),
  
  hunters_green_seq = c(
    "#cee8dd", "#b0d2c4", "#93bcab", "#75a793", "#58927c", "#3A7D65", "#2e6753", "#235241", "#193e30", "#0e2b21", "#011a11"
  ),
  
  byzantium_seq = c(
    "#e7dff4", "#d5c9ea", "#c3b3e0", "#b19ed6", "#9f89cc", "#8C74C2", "#735f9e", "#5a4a7c", "#43375c", "#2d243d", "#181321"
  ),
  
  ochre_seq = c(
    "#f7ddd2", "#f5c9b6", "#f2b59a", "#eca17f", "#e68e64", "#DE7A49", "#b4633b", "#8c4e2e", "#653921", "#422516", "#221205"
  ),
  
  chestnut_seq = c(
    "#f8dcd5", "#ebbcb0", "#dc9d8d", "#cb7e6b", "#b95f4a", "#a53f2b", "#893625", "#6d2d1e", "#532318", "#3a1a12", "#231109"
  ),
  
  trolley_grey_seq = c(
   "#e2e2e2", "#cecece", "#bababa", "#a6a6a6", "#939393", "#808080", "#696969", "#525252", "#3c3c3c", "#282828",  "#151515"
  ),
  
  ## Diverging palettes
  div_hblue_red = c(
    "#145787", "#4e739c", "#7891b0", "#a0b0c6", "#c8d0db", "#f1f1f1", "#edcdc8", "#e7aaa0", "#dc877a",  "#cf6355",  "#BF3B33"
  ),
  
  div_earth = c(
    "#a16928", "#af8343", "#bd9d60", "#ccb77f", "#dcd1a0", "#edeac2", "#c3d9b1", "#97c6a9", "#6db3a5", "#469ea4", "#2887a1"
  ),
  
  div_green_pur = c(
    "#3A7D65", "#60937f", "#84aa9a", "#a7c1b6", "#ccd9d3", "#f1f1f1", "#ddd7e8", "#c9bdde", "#b5a4d5", "#a18ccc", "#8C74C2"
  )
)
  
  # Individual named colours
  #' @export
  #' @description Hex blue with hex code "#145787"
  #' @title hex blue
  hex_blue = "#145787"
  
  #' @export
  #' @description Air Force blue with hex code "#1E95A2"
  #' @title Air Force blue
  air_force_blue = "#1E95A2"
  
  #' @export
  #' @description Penn red with hex code "#BF3B33"
  #' @title Penn red
  penn_red = "#BF3B33"
  
  #' @export
  #' @description Hunyadi yellow with hex code "#EFBB41"
  #' @title Hunyadi yellow
  hunyadi_yellow = "#EFBB41"
  
  #' @export
  #' @description Hunters green with hex code "#3A7D65"
  #' @title Hunters green
  hunters_green = "#3A7D65"
  
  #' @export
  #' @description Byzantium with hex code "#8C74C2"
  #' @title Byzantium
  byzantium = "#8C74C2"
  
  #' @export
  #' @description Ochre with hex code "#DE7A49"
  #' @title Ochre
  ochre = "#DE7A49"
  
  #' @export
  #' @description Chestnut with hex code "#A53F2B"
  #' @title Chestnut
  chestnut = "#A53F2B"
  
  #' @export
  #' @description Light hex blue with hex code "#83C0EC". Alternative is "#64B1E8"
  #' @title Light hex blue
  light_hex_blue = "#83C0EC"
  
  #' @export
  #' @description Light Air Force blue with hex code "#94E3EB". Alternative is "#88D7F8"
  #' @title Light Air Force blue
  light_air_force_blue = "#94E3EB"
  
  #' @export
  #' @description Light Penn red with hex code "#E8ADAA". Alternative is "#F2665C"
  #' @title Light Penn red
  light_penn_red = "#E8ADAA"
  
  #' @export
  #' @description Light hunyadi yellow with hex code "#F8E4B4"
  #' @title Light hunyadi yellow
  light_hunyadi_yellow = "#F8E4B4"
  
  #' @export
  #' @description Light Hunters green with hex code "#A6D6C5"
  #' @title Light Hunters green
  light_hunters_green = "#A6D6C5"
  
  #' @export
  #' @description Light byzantium with hex code "#D1C8E7"
  #' @title Light byzantium
  light_byzantium = "#D1C8E7"
  
  #' @export
  #' @description Light ochre with hex code "#F2CAB7"
  #' @title Light ochre
  light_ochre = "#F2CAB7"
  
  #' @export
  #' @description Light chestnut with hex code "#F2B1A4"
  #' @title Light chestnut
  light_chesnut = "#F2B1A4"
  
  #' @export
  #' @description Whisper with hex code "#EBEBEB"
  #' @title Whisper
  whisper = "#EBEBEB"
  
  #' @export
  #' @description Timberwolf with hex code "#D4D4D4". Useful as light grid line colour
  #' @title Timberwolf
  timberwolf = "#D4D4D4"
  
  #' @export
  #' @description Suva grey with hex code "#8F8F8F". Useful as Caption colour.
  #' @title Suva grey
  suva_grey = "#8F8F8F"
  
  #' @export
  #' @description Trolley grey with hex code "#808080"
  #' @title Trolley grey
  trolley_grey = "#808080"
  
  #' @export
  #' @description Matterhorn with hex code "#4F4F4F" Useful as Subtitle/Body & Dark Grid lines colour.
  #' @title Matterhorn
  matterhorn = "#4F4F4F"
  
  #' @export
  #' @description Jet with hex code "#2F2F2F". Useful as Title colour.
  #' @title Jet
  jet = "#2F2F2F"

