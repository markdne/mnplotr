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
  hex_main = c("#145787", "#bf3b33", "#8c74c2", "#de7a49", "#3fb1bd", "#ffdc76", "#2f6652", "#a0a0a0"),

  ## Recommended categorical palettes
  hex_blue = c("#145787", "#bf3b33", "#3fb1bd", "#2f6652", "#de7a49", "#ffdc76", "#8c74c2"),
  penn_red = c("#bf3b33", "#3fb1bd", "#8c74c2", "#de7a49", "#2f6652"),
  byzantium = c("#8c74c2", "#2f6652", "#145787", "#ffdc76", "#de7a49", "#3fb1bd"),
  ochre = c("#de7a49", "#8c74c2", "#ffdc76", "#bf3b33", "#3fb1bd"),
  teal = c("#3fb1bd", "#bf3b33", "#8c74c2", "#ffdc76", "#2f6652"),
  hunyadi_yellow = c("#ffdc76", "#145787", "#2f6652", "#de7a49", "#8c74c2"),
  hunters_green = c("#2f6652", "#8c74c2", "#ffdc76", "#de7a49", "#3fb1bd"),
  hex_blue_red = c("#145787", "#bf3b33"),

  hex_pairs = c(
    "#145787", "#5b8fc7",
    #"#4588A3", "#94C8DE",
    "#3fb1bd", "#94d7e0",
    "#bf3b33", "#e58c85",
    "#ffdc76", "#ffe9a8",
    "#2f6652", "#78a893",
    "#8c74c2", "#b7a9e0",
    "#de7a49", "#f3b18c",
    "#a53f2b", "#f2b1a4",
    "#a0a0a0", "#cfcfcf"
  ),

  ## Sequential colour palettes - built from base colours
  ## Use https://www.learnui.design/tools/data-color-picker.html#single
  ## To get lighter colours use # colours = 7 and final colour #f9f9f9 (ignore #f9f9f9)
  ## To get darker colours use # colours = 7 and final colour #0b0b0b (ignore #0b0b0b)

  hex_blue_seq = c(
    "#d6dce5", "#b3c0d2", "#90a4bf", "#6d89ac", "#477099", "#145787", "#1a4a71", "#1b3d5b", "#1b3046", "#182432", "#14191f"
  ),

  teal_seq = c(
    "#deedef", "#c2e1e5", "#a6d5db", "#70b6c0", "#68bdc7", "#3fb1bd", "#3a929c", "#33757c", "#2c595e", "#233e41", "#192526"
  ),

  penn_red_seq = c(
    "#f5dad5", "#efbbb2", "#e69c90", "#db7e70", "#ce5e51", "#bf3b33", "#9f352d", "#7f2e26", "#612720", "#441f1a", "#291714"
  ),

  hunyadi_yellow_seq = c(
    "#fdf3df", "#ffedc5", "#ffe7ab", "#ffe191", "#ffdc76", "#ffdc76", "#d1b04c", "#a68c40", "#7c6933", "#544827", "#30291a"
  ),

  hunters_green_seq = c(
    "#d6dfdb", "#b4c6be", "#92ada1", "#719586", "#507d6b", "#2f6652", "#2a5646", "#25463a", "#20372e", "#1a2923", "#141b18"
  ),

  byzantium_seq = c(
    "#e7e2f0", "#d5cbe7", "#c3b5de", "#b19fd5", "#9f89cb", "#8c74c2", "#7561a0", "#5e4f7f", "#493e60", "#342d43", "#201d27"
  ),

  ochre_seq = c(
    "#f9e4da", "#f7cebc", "#f3b99e", "#eda481", "#e68f65", "#de7a49", "#b7663f", "#925335", "#6e412b", "#4c2f21", "#2c1e17"
  ),

  chestnut_seq = c(
    "#f0d9d3", "#e4baaf", "#d79b8c", "#c87d6a", "#b75e4a", "#a53f2b", "#8a3726", "#6f2f21", "#55271d", "#3d1f18", "#251712"
  ),

  trolley_grey_seq = c(
   "#eaeaea", "#dbdbdb", "#cccccc", "#bdbdbd", "#aeaeae", "#a0a0a0", "#858585", "#6a6a6a", "#515151", "#393939",  "#232323"
  ),

  ## Diverging palettes
  div_hblue_red = c(
    "#145787", "#4e739c", "#7891b0", "#a0b0c6", "#c8d0db", "#f1f1f1", "#edcdc8", "#e7aaa0", "#dc877a", "#cf6355", "#bf3b33"
  ),

  div_earth = c(
    "#a16928", "#af8343", "#bd9d60", "#ccb77f", "#dcd1a0", "#edeac2", "#c3d9b1", "#97c6a9", "#6db3a5", "#469ea4", "#2887a1"
  ),

  div_green_pur = c(
    "#2f6652", "#56806f", "#7b9b8e", "#a1b7ae", "#c8d4cf", "#f1f1f1", "#ddd7e8", "#c9bdde", "#b5a4d5", "#a18ccc", "#8c74c2"
  )
)

  # Individual named colours
  #' @export
  #' @description Hex blue with hex code "#145787"
  #' @title hex blue
  hex_blue = "#145787"

  #' @export
  #' @description Hex teal with hex code "#3fb1bd"
  #' @title teal
  teal = "#3fb1bd"

  #' @export
  #' @description Penn red with hex code "#bf3b33"
  #' @title penn red
  penn_red = "#bf3b33"

  #' @export
  #' @description Hunyadi yellow with hex code "#ffdc76"
  #' @title hunyadi yellow
  hunyadi_yellow = "#ffdc76"

  #' @export
  #' @description Hunters green with hex code "#3A7D65"
  #' @title hunters green
  hunters_green = "#3A7D65"

  #' @export
  #' @description Byzantium with hex code "#8c74c2"
  #' @title byzantium
  byzantium = "#8c74c2"

  #' @export
  #' @description Ochre with hex code "#de7a49"
  #' @title ochre
  ochre = "#de7a49"

  #' @export
  #' @description Air Force blue with hex code "#1E95A2"
  #' @title air force blue
  air_force_blue = "#1E95A2"

  #' @export
  #' @description Chestnut with hex code "#a53f2b"
  #' @title chestnut
  chestnut = "#a53f2b"

  #' @export
  #' @description Light hex blue with hex code "#5b8fc7". Alternative is "#64B1E8"
  #' @title light hex blue
  light_hex_blue = "#5b8fc7"

  #' @export
  #' @description Light penn red with hex code "#e58c85". Alternative is "#F2665C"
  #' @title light Penn red
  light_penn_red = "#e58c85"

  #' @export
  #' @description Light teal with hex code "#94d7e0"
  #' @title light teal
  light_hunyadi_yellow = "#94d7e0"

  #' @export
  #' @description Light hunyadi yellow with hex code "#ffe9a8"
  #' @title light hunyadi yellow
  light_hunyadi_yellow = "#ffe9a8"

  #' @export
  #' @description Light Hunters green with hex code "#78a893"
  #' @title light hunters green
  light_hunters_green = "#78a893"

  #' @export
  #' @description Light byzantium with hex code "#b7a9e0"
  #' @title light byzantium
  light_byzantium = "#b7a9e0"

  #' @export
  #' @description Light ochre with hex code "#f3b18c"
  #' @title light ochre
  light_ochre = "#f3b18c"

  #' @export
  #' @description Light chestnut with hex code "#f2b1a4"
  #' @title light chestnut
  light_chesnut = "#f2b1a4"

  #' @export
  #' @description Light Air Force blue with hex code "#A8D5DE". Alternative is "#88D7F8"
  #' @title light air force blue
  light_air_force_blue = "#A8D5DE"

  #' @export
  #' @description Whisper with hex code "#EBEBEB"
  #' @title whisper
  whisper = "#EBEBEB"

  #' @export
  #' @description Timberwolf with hex code "#D4D4D4". Useful as light grid line colour
  #' @title timberwolf
  timberwolf = "#D4D4D4"

  #' @export
  #' @description Suva grey with hex code "#8F8F8F". Useful as Caption colour.
  #' @title suva grey
  suva_grey = "#8F8F8F"

  #' @export
  #' @description Trolley grey with hex code "#808080"
  #' @title trolley grey
  trolley_grey = "#808080"

  #' @export
  #' @description Matterhorn with hex code "#4F4F4F" Useful as Subtitle/Body & Dark Grid lines colour.
  #' @title matterhorn
  matterhorn = "#4F4F4F"

  #' @export
  #' @description Jet with hex code "#2F2F2F". Useful as Title colour.
  #' @title jet
  jet = "#2F2F2F"

