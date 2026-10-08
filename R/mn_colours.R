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
  hex_main = c("#1464a0", "#b02b23", "#7a5bbf", "#e07030", "#3fb1bd", "#f0c535", "#2d8a5e", "#7a7a7a"),

  ## Recommended categorical palettes
  hex_blue = c("#1464a0", "#b02b23", "#3fb1bd", "#2d8a5e", "#e07030", "#f0c535", "#7a5bbf"),
  penn_red = c("#b02b23", "#3fb1bd", "#7a5bbf", "#e07030", "#2d8a5e"),
  byzantium = c("#7a5bbf", "#2d8a5e", "#1464a0", "#f0c535", "#e07030", "#3fb1bd"),
  ochre = c("#e07030", "#7a5bbf", "#f0c535", "#b02b23", "#3fb1bd"),
  teal = c("#3fb1bd", "#b02b23", "#7a5bbf", "#f0c535", "#2d8a5e"),
  hunyadi_yellow = c("#f0c535", "#1464a0", "#2d8a5e", "#e07030", "#7a5bbf"),
  hunters_green = c("#2d8a5e", "#7a5bbf", "#f0c535", "#e07030", "#3fb1bd"),
  hex_blue_red = c("#1464a0", "#b02b23"),

  ## Colourblind-safe categorical palette (8 colours)
  ## Built from MN base colours, benchmarked against the Okabe-Ito palette.
  ## Checked with colorspace::deutan(), protan() and tritan() simulations: the closest pair of colours
  ## is >= 14 CIEDE2000 apart under normal vision and all three CVD types (Okabe-Ito scores ~11).
  ## Ordered so that the first n colours are as distinct as possible for any n.
  ## hex blue, penn red, ochre, teal, trolley grey, jet and light ochre are MN colours.
  ## #F0E442 (Okabe-Ito yellow) replaces hunyadi yellow, which clashes with ochre/light ochre under CVD.
  ## byzantium and hunters green are excluded as they collide with hex blue and ochre under CVD.
  cb_safe = c("#1464a0", "#b02b23", "#e07030", "#3fb1bd", "#7a7a7a", "#2F2F2F", "#f3b18c", "#F0E442"),

  hex_pairs = c(
    "#1464a0", "#5b8fc7",
    #"#4588A3", "#94C8DE",
    "#3fb1bd", "#94d7e0",
    "#b02b23", "#e58c85",
    "#f0c535", "#ffe9a8",
    "#2d8a5e", "#78a893",
    "#7a5bbf", "#b7a9e0",
    "#e07030", "#f3b18c",
    "#a53f2b", "#f2b1a4",
    "#7a7a7a", "#cfcfcf"
  ),

  ## Sequential colour palettes - built from base colours
  ## Use https://www.learnui.design/tools/data-color-picker.html#single
  ## To get lighter colours use # colours = 7 and final colour #f9f9f9 (ignore #f9f9f9)
  ## To get darker colours use # colours = 7 and final colour #0b0b0b (ignore #0b0b0b)

  hex_blue_seq = c(
    "#d9e4f0", "#b3cae1", "#8eb0d1", "#6997c1", "#447db1", "#1464a0", "#0e5082", "#083d64", "#042b48","#021a2e", "#010a16"
  ),

  teal_seq = c(
    "#e2f2f4", "#c5e5e9", "#a8d8de", "#89cbd3", "#68bec8", "#3fb1bd", "#329099", "#256f77", "#185157", "#0d3438", "#041a1c"
  ),

  penn_red_seq = c(
    "#f6ddd9", "#ebbbb4", "#df9a8f", "#d1786c", "#c15449", "#b02b23", "#8f211a", "#6f1712", "#500e0a", "#340604", "#1a0201"
  ),

  hunyadi_yellow_seq = c(
    "#fdf6e3", "#faedc6", "#f8e3a8", "#f5d989", "#f3cf65", "#f0c535", "#c3a029", "#997d1e", "#705b13", "#4a3b09", "#271e03"
  ),

  hunters_green_seq = c(
    "#ddebe3", "#bcd7c7", "#9bc4ac", "#79b091", "#569d77", "#2d8a5e", "#236f4b", "#195639", "#0f3e28", "#072717", "#021209"
  ),

  byzantium_seq = c(
    "#e7e3f6", "#d0c8ec", "#b9ade2", "#a392d7", "#8e77cb", "#7a5bbf", "#62499b", "#4b3779", "#362658", "#211639", "#0e081d"
  ),

  ochre_seq = c(
    "#fde8de", "#f9d1bd", "#f4b99c", "#efa17b", "#e88959", "#e07030", "#b65a25", "#8e451b", "#683111", "#451e08", "#240c02"
  ),

  chestnut_seq = c(
    "#f3dfda", "#e6bfb6", "#d79f93", "#c88070", "#b7604e", "#a53f2b", "#863221", "#682517", "#4b180e", "#300d06", "#170402"
  ),

  trolley_grey_seq = c(
   "#e8e8e8", "#d1d1d1", "#bababa", "#a4a4a4", "#8f8f8f", "#7a7a7a", "#626262", "#4b4b4b", "#363636", "#212121",  "#0e0e0e"
  ),

  ## Diverging palettes
  div_hblue_red = c(
    "#1464a0", "#537eb0", "#7d99c0", "#a4b5d0", "#cbd3e0", "#f1f1f1", "#ebcac4", "#e1a498", "#d47e6f", "#c45848", "#b02b23"
  ),

  div_earth = c(
    "#a16928", "#af8343", "#bd9d60", "#ccb77f", "#dcd1a0", "#edeac2", "#c3d9b1", "#97c6a9", "#6db3a5", "#469ea4", "#2887a1"
  ),

  div_green_pur = c(
    "#2d8a5e", "#5a9e7a", "#81b396", "#a6c7b3", "#cbdcd2", "#f1f1f1", "#dad1e7", "#c3b3de", "#ac95d4", "#9478c9", "#7a5bbf"
  )
)

# Categorical palettes in mn_palettes: mn_rampr() recycles these rather than interpolating.
# Add any new categorical palette here.
mn_categorical_palettes <- c(
  "hex_main", "hex_blue", "penn_red", "byzantium", "ochre", "teal",
  "hunyadi_yellow", "hunters_green", "hex_blue_red", "cb_safe"
)

  # Individual named colours
  #' @export
  #' @description Hex blue with hex code "#1464a0"
  #' @title hex blue
  hex_blue = "#1464a0"

  #' @export
  #' @description Hex teal with hex code "#3fb1bd"
  #' @title teal
  teal = "#3fb1bd"

  #' @export
  #' @description Penn red with hex code "#b02b23"
  #' @title penn red
  penn_red = "#b02b23"

  #' @export
  #' @description Hunyadi yellow with hex code "#f0c535"
  #' @title hunyadi yellow
  hunyadi_yellow = "#f0c535"

  #' @export
  #' @description Hunters green with hex code "#2d8a5e"
  #' @title hunters green
  hunters_green = "#2d8a5e"

  #' @export
  #' @description Byzantium with hex code "#7a5bbf"
  #' @title byzantium
  byzantium = "#7a5bbf"

  #' @export
  #' @description Ochre with hex code "#e07030"
  #' @title ochre
  ochre = "#e07030"

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
  light_teal = "#94d7e0"

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
  light_chestnut = "#f2b1a4"

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

  #' @export
  #' @description Snow white with hex code "#fafafc". Used as the plot and panel background colour in mn_style themes.
  #' @title snow white
  snow_white = "#fafafc"

